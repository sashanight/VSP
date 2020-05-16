-- target_id, x1, x2, y1, y2

DROP VIEW IF EXISTS targets_in_area;
DROP VIEW IF EXISTS get_fighters_info_in_duty;
DROP VIEW IF EXISTS get_orders_in_area;
DROP VIEW IF EXISTS get_targets_by_direction;
DROP VIEW IF EXISTS search_targets_for_fight_by_fuel;

DROP TRIGGER IF EXISTS insert_to_fighters_in_duty ON fighters_in_duty;

DROP FUNCTION IF EXISTS is_object_in_area(integer, decimal, decimal, decimal, decimal);
DROP FUNCTION IF EXISTS get_last_coordinates();
DROP FUNCTION IF EXISTS get_object_speed_projection(integer);
DROP FUNCTION IF EXISTS check_direction(integer, decimal, decimal, decimal, decimal);
DROP FUNCTION IF EXISTS check_interception(integer, integer);
DROP FUNCTION IF EXISTS set_fighter_for_order();



CREATE FUNCTION is_object_in_area(integer, decimal, decimal, decimal, decimal) RETURNS boolean AS ' 
DECLARE
    answer boolean;
    last_time timestamp;
    object_x decimal;
    object_y decimal;
BEGIN
    SELECT MAX(rls_info.update_time) INTO last_time
    FROM rls_info
    WHERE (rls_info.target_id = $1);

    SELECT rls_info.x, rls_info.y INTO object_x, object_y
    FROM rls_info
    WHERE (rls_info.target_id = $1 AND rls_info.update_time = last_time);

    IF (object_x > $2 AND object_x < $3 AND object_y > $4 AND object_y < $5) THEN 
        answer := TRUE;
    ELSE 
        answer := FALSE;
    END IF;
    
    RETURN answer;
END;
' LANGUAGE plpgsql;


--SELECT is_object_in_area(8, 100.01, 300.01, 100.01, 300.01);


CREATE FUNCTION get_last_coordinates() RETURNS TABLE(target_id int, update_time timestamp, x decimal, y decimal, z decimal) AS '
    SELECT rls_info.target_id, rls_info.update_time, rls_info.x, rls_info.y, rls_info.z
    FROM rls_info JOIN
        (SELECT target_id, MAX(update_time) as last_update_time
        FROM rls_info
        GROUP BY target_id) last_times ON (rls_info.target_id = last_times.target_id 
                            AND rls_info.update_time = last_times.last_update_time);
' LANGUAGE SQL;

 
---SELECT * FROM get_last_coordinates();



\set zone_border_x1 100
\set zone_border_x2 300
\set zone_border_y1 200
\set zone_border_y2 500


CREATE VIEW targets_in_area AS
    SELECT *
    FROM get_last_coordinates() last_position 
    WHERE is_object_in_area(last_position.target_id, :zone_border_x1, :zone_border_x2, :zone_border_y1, :zone_border_y2);



\set duty_id 4

CREATE VIEW get_fighters_info_in_duty AS
    SELECT fighters_in_duty.order_id, order_with_status.target_id, order_with_status.target_description as target_desc,
            order_with_status.start_time, order_with_status.status_description as status_desc, 
            fighters_in_duty.fighter_id, fighter_with_pilot.fighter_description as fighter_desc, 
            fighter_with_pilot.first_name, fighter_with_pilot.last_name
    FROM fighters_in_duty 
        JOIN (SELECT orders.order_id, targets_info.target_id, statuses.status_description, 
                orders.start_time, model_info.description as target_description
            FROM orders 
                JOIN statuses ON (orders.status_id = statuses.status_id)
                JOIN targets_info ON (orders.target_id = targets_info.target_id)
                JOIN model_info ON (targets_info.model_id = model_info.model_id)
                ) order_with_status 
        ON (fighters_in_duty.order_id = order_with_status.order_id)
        
        JOIN (SELECT fighters_info.fighter_id,  pilots.first_name, 
                pilots.last_name, model_info.description as fighter_description
            FROM fighters_info 
                JOIN pilots ON (fighters_info.pilot_id = pilots.pilot_id) 
                JOIN model_info ON (fighters_info.model_id = model_info.model_id)
                ) fighter_with_pilot
        ON (fighters_in_duty.fighter_id = fighter_with_pilot.fighter_id)
    WHERE fighters_in_duty.order_id = :duty_id;



\set area_x1 50
\set area_x2 300
\set area_y1 100
\set area_y2 200

CREATE VIEW get_orders_in_area AS
    SELECT DISTINCT fighters_in_duty.order_id, order_with_status.start_time, order_with_status.status_description, 
            order_with_status.target_id, order_with_status.x, order_with_status.y, order_with_status.z
    FROM fighters_in_duty
        JOIN (SELECT orders.order_id, targets_info.target_id, statuses.status_description, 
            orders.start_time, last_coordinates.x, last_coordinates.y, last_coordinates.z
            FROM orders 
                JOIN statuses ON (orders.status_id = statuses.status_id)
                JOIN targets_info ON (orders.target_id = targets_info.target_id)
                JOIN (SELECT * FROM get_last_coordinates()) last_coordinates ON (targets_info.target_id = last_coordinates.target_id)
                ) order_with_status 
        ON (fighters_in_duty.order_id = order_with_status.order_id) 

    WHERE (order_with_status.x BETWEEN :area_x1 and :area_x2) AND (order_with_status.y BETWEEN :area_y1 and :area_y2);




CREATE FUNCTION get_object_speed_projection(integer) RETURNS RECORD AS $$
DECLARE
    answer record;
    start_time timestamp;
    last_time timestamp;
    X_start_proj decimal;
    X_end_proj decimal;
    Y_start_proj decimal;
    Y_end_proj decimal;
    Z_start_proj decimal;
    Z_end_proj decimal;
    hours_between decimal;
BEGIN

    SELECT MAX(rls_info.update_time) INTO last_time
    FROM rls_info
    WHERE (rls_info.target_id = $1);

    SELECT MIN(rls_info.update_time) INTO start_time
    FROM rls_info
    WHERE (rls_info.target_id = $1) AND (last_time - rls_info.update_time) < INTERVAL '10' SECOND;

    SELECT rls_info.x, rls_info.y, rls_info.z INTO X_start_proj, Y_start_proj, Z_start_proj
    FROM rls_info
    WHERE (rls_info.target_id = $1 AND rls_info.update_time = start_time);

    SELECT rls_info.x, rls_info.y, rls_info.z INTO X_end_proj, Y_end_proj, Z_end_proj
    FROM rls_info
    WHERE (rls_info.target_id = $1 AND rls_info.update_time = last_time);

    SELECT EXTRACT(EPOCH FROM (last_time::timestamp - start_time::timestamp)) / 3600. INTO hours_between;
    
    SELECT
        round((X_end_proj - X_start_proj) / hours_between, 3) as v_x,
        round((Y_end_proj - Y_start_proj) / hours_between, 3) as v_y,
        round((Z_end_proj - Z_start_proj) / hours_between, 3) as v_z,
        last_time as update_time,
        round(hours_between, 3) as hour,
        start_time as st,
        last_time as lt
        INTO answer;

    RETURN answer;
END;
$$ LANGUAGE plpgsql;


--SELECT * FROM get_object_speed_projection(8) as f(v_x decimal, v_y decimal, v_z decimal, update_time timestamp, 
--    hour decimal, st timestamp, lt timestamp);


\set direction1_x 0.71
\set direction1_y 0.71
\set direction2_x 0.0
\set direction2_y 1.0


CREATE FUNCTION check_direction(integer, decimal, decimal, decimal, decimal) RETURNS RECORD AS $$
DECLARE
    answer RECORD;
    flag boolean;
    Vx decimal;
    Vy decimal;
    Vz decimal;
    Nx decimal;
    Ny decimal;
    Nz decimal;
    V decimal;
    update_time timestamp;
BEGIN
    SELECT data.v_x, data.v_y, data.v_z, data.update_time INTO Vx, Vy, Vz, update_time
    FROM (SELECT * FROM get_object_speed_projection($1) as f(v_x decimal, v_y decimal, v_z decimal,
            update_time timestamp, hour decimal, st timestamp, lt timestamp)) data;

    SELECT sqrt(Vx*Vx+Vy*Vy+Vz*Vz) INTO V;

    Nx := Vx / V;
    Ny := Vy / V;
    Nz := Vz / V;

    IF  ($2 * Ny - $3 * Nx >= 0) AND (Nx * $5 - Ny * $4 >= 0) THEN
        flag := TRUE;
    ELSE
        flag := FALSE;
    END IF;

    SELECT round(Nx, 3), round(Ny, 3), round(Nz, 4), update_time, flag, $1 INTO answer;

    RETURN answer;
END;
$$ LANGUAGE plpgsql;



CREATE VIEW get_targets_by_direction AS
    SELECT last_info.target_id, last_info.x, last_info.y, last_info.z, f.Nx, f.Ny, f.Nz, f.update_time
    FROM get_last_coordinates() as last_info
        JOIN check_direction(last_info.target_id, :direction1_x, :direction1_y, :direction2_x, :direction2_y) as f(Nx decimal, Ny decimal, 
                Nz decimal, update_time timestamp, right_dir boolean, target_id integer) ON (f.target_id = last_info.target_id)
        JOIN targets_info ON (targets_info.target_id = last_info.target_id)
    WHERE (targets_info.whose = FALSE) AND f.right_dir;




-- params: fighter_id, target_id
CREATE FUNCTION check_interception(integer, integer) RETURNS RECORD AS $$
DECLARE
    answer RECORD;
    Vx decimal;
    Vy decimal;
    Vz decimal;
    V decimal;
    Tx decimal;
    Ty decimal;
    Tz decimal;
    Fx decimal;
    Fy decimal;
    Fz decimal;
    F_velocity decimal;
    current_fuel decimal;
    consumption decimal;

    distance decimal;
    available_time decimal;
    required_time decimal;
    flag boolean;
BEGIN
    SELECT data.v_x, data.v_y, data.v_z INTO Vx, Vy, Vz
    FROM (SELECT * FROM get_object_speed_projection($2) as f(v_x decimal, v_y decimal, v_z decimal,
            update_time timestamp, hour decimal, st timestamp, lt timestamp)) data;

    SELECT sqrt(Vx*Vx+Vy*Vy+Vz*Vz) INTO V;

    SELECT last_info.x, last_info.y, last_info.z INTO Tx, Ty, Tz
    FROM get_last_coordinates() as last_info
    WHERE last_info.target_id = $2;

    SELECT fighters_info.fuel_level, fighters_info.x, fighters_info.y, fighters_info.z, model_info.fuel_consumption, model_info.mean_velocity
        INTO current_fuel, Fx, Fy, Fz, consumption, F_velocity 
    FROM fighters_info JOIN model_info ON (model_info.model_id = fighters_info.model_id)
    WHERE fighters_info.fighter_id = $1;


    available_time := current_fuel / consumption; 
    distance := sqrt(pow(Tx-Fx,2) + pow(Ty-Fy,2) + pow(Tz-Fz,2));
    required_time := 60 * distance / (F_velocity - V);

    IF required_time > available_time AND required_time > 0 THEN
        flag := FALSE;
    ELSE
        flag := TRUE;
    END IF;

    SELECT $1, round(distance, 3), round(available_time, 3), round(required_time, 3), flag INTO answer;

    RETURN answer;
END;
$$ LANGUAGE plpgsql;


--SELECT * FROM check_interception(5, 3) as f(fighter_id integer, distance decimal, av_time decimal, req_time decimal, flag boolean);



\set target_id_for_fight 4

CREATE VIEW search_targets_for_fight_by_fuel AS
    SELECT fighters_info.fighter_id, f.req_time as "required_time(min)", fighters_info.x, fighters_info.y, fighters_info.z, model_info.description, pilots.first_name, pilots.last_name
    FROM fighters_info
        JOIN pilots ON (fighters_info.pilot_id = pilots.pilot_id)
        JOIN model_info ON (model_info.model_id = fighters_info.model_id)
        JOIN check_interception(fighters_info.fighter_id, :target_id_for_fight) as f(fighter_id integer, distance decimal, av_time decimal, req_time decimal, flag boolean)
            ON (f.fighter_id = fighters_info.fighter_id)
    WHERE f.flag
    ORDER BY "required_time(min)";



CREATE FUNCTION set_fighter_for_order() RETURNS trigger AS $$
DECLARE
    fgt_id integer;
    ord_id integer;
    tar_id integer;
    possibility boolean;
BEGIN
    fgt_id := NEW.fighter_id;
    ord_id := NEW.order_id;

    SELECT orders.target_id INTO tar_id
    FROM orders
    WHERE orders.order_id = ord_id;

    IF tar_id IS NULL THEN
        RAISE EXCEPTION 'Order with id % doesn"t exist', ord_id;
    END IF;

    SELECT f.flag INTO possibility
    FROM check_interception(fgt_id, tar_id) as f(fighter_id integer, distance decimal, av_time decimal, req_time decimal, flag boolean);

    UPDATE orders set update_time = now() WHERE orders.order_id = ord_id; -- CHANGE UPDATE TIME

    IF possibility THEN
        UPDATE orders set status_id = 2 WHERE orders.order_id = ord_id; --SET THAT ORDER IN PROGRESS
        RAISE INFO 'Fighter with id % was assigned for interception target with id %', fgt_id, tar_id;
        RETURN NEW;
    ELSE
        UPDATE orders set status_id = 1 WHERE order_id = ord_id; --SET THAT ORDER IN QUERY
        RAISE EXCEPTION 'Fighter with id % can"t intercept target with id %', fgt_id, tar_id;
    END IF;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER insert_to_fighters_in_duty BEFORE INSERT OR UPDATE ON fighters_in_duty FOR EACH ROW EXECUTE PROCEDURE set_fighter_for_order();




\echo
\echo Targets in area: x1 - :zone_border_x1, x2 - :zone_border_x2, y1 - :zone_border_y1, y2 - :zone_border_y2
SELECT * FROM targets_in_area;
\echo


\echo
\echo Fighters on duty with order_id :duty_id
SELECT * FROM get_fighters_info_in_duty;
\echo


\echo
\echo Orders in area: x1 - :area_x1, x2 - :area_x2, y1 - :area_y1, y2 - :area_y2
SELECT * FROM get_orders_in_area;
\echo


\echo
\echo Get targets moving between north and northwest
SELECT * FROM get_targets_by_direction;
\echo


\echo
\echo Fighter that capable of intercepting targets with target_id :target_id_for_fight
SELECT * FROM search_targets_for_fight_by_fuel;
\echo



\echo
\echo All fighters on duty before modification
SELECT * FROM fighters_in_duty;
\echo

\echo 
\echo "Failed test trigger for insert into fighters_in_duty"
UPDATE "fighters_in_duty" set order_id = 4 WHERE fighter_id = 1;
\echo 

\echo 
\echo "Success test trigger for insert into fighters_in_duty"
UPDATE "fighters_in_duty" set order_id = 4 WHERE fighter_id = 16;
\echo 

\echo 
\echo "Success test trigger for insert into fighters_in_duty"
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (12, 4);
\echo 


\echo
\echo All fighters on duty after modification
SELECT * FROM fighters_in_duty;
\echo




\echo Lets test rights management!

\echo Login as writer1
\c rldn writer1

\echo TRY READ
SELECT * FROM statuses;
\echo TRY WRITE
INSERT INTO "weapons" (weapon_id, power_level) VALUES (10, 10);

\echo Login reader1
\c rldn reader1

\echo TRY WRITE
INSERT INTO "weapons" (weapon_id, power_level) VALUES (11, 10);
\echo TRY READ
SELECT * FROM statuses;

