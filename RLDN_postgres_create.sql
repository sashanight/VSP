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

DROP TABLE IF EXISTS fighters_in_duty;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS statuses;
DROP TABLE IF EXISTS fighters_info;
DROP TABLE IF EXISTS pilots;
DROP TABLE IF EXISTS rls_info;
DROP TABLE IF EXISTS targets_info;
DROP TABLE IF EXISTS model_info;
DROP TABLE IF EXISTS weapons;

DROP USER IF EXISTS reader1;
DROP USER IF EXISTS reader2;
DROP USER IF EXISTS writer1;
DROP USER IF EXISTS writer2;

DROP GROUP IF EXISTS readers;
DROP GROUP IF EXISTS writers;

--\! sudo deluser reader1
--\! sudo deluser reader2
--\! sudo deluser writer1
--\! sudo deluser writer2

--\! sudo useradd -M reader1
--\! sudo useradd -M reader2
--\! sudo useradd -M writer1
--\! sudo useradd -M writer2


CREATE USER reader1 WITH PASSWORD 'reader1' NOCREATEDB NOCREATEUSER;
CREATE USER reader2 WITH PASSWORD 'reader2' NOCREATEDB NOCREATEUSER;
CREATE USER writer1 WITH PASSWORD 'writer1' NOCREATEDB NOCREATEUSER;
CREATE USER writer2 WITH PASSWORD 'writer2' NOCREATEDB NOCREATEUSER;

CREATE GROUP readers;
CREATE GROUP writers;

ALTER GROUP readers ADD USER reader1, reader2;
ALTER GROUP writers ADD USER writer1, writer2;


CREATE TABLE "statuses" (
	"status_id" serial NOT NULL,
	"status_description" TEXT NOT NULL,
	CONSTRAINT statuses_pk PRIMARY KEY ("status_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "rls_info" (
	"target_id" serial NOT NULL,
	"update_time" TIMESTAMP NOT NULL,
	"x" DECIMAL NOT NULL,
	"y" DECIMAL NOT NULL,
	"z" DECIMAL NOT NULL CHECK (z > 0),
	CONSTRAINT rls_info_pk PRIMARY KEY ("target_id", "update_time")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "fighters_in_duty" (
	"fighter_id" serial NOT NULL,
	"order_id" integer NOT NULL,
	CONSTRAINT fighters_in_duty_pk PRIMARY KEY ("fighter_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "fighters_info" (
	"fighter_id" serial NOT NULL,
	"model_id" integer NOT NULL,
	"fuel_level" decimal NOT NULL CHECK (fuel_level >= 0),
	"pilot_id" integer NOT NULL,
	"x" DECIMAL NOT NULL,
	"y" DECIMAL NOT NULL,
	"z" DECIMAL NOT NULL CHECK (z > 0),
	CONSTRAINT unique_pilot UNIQUE ("pilot_id"),
	CONSTRAINT fighters_info_pk PRIMARY KEY ("fighter_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "orders" (
	"order_id" serial NOT NULL,
	"target_id" serial NOT NULL,
	"status_id" serial NOT NULL,
	"start_time" TIMESTAMP NOT NULL,
	"update_time" TIMESTAMP NOT NULL,
	CONSTRAINT unique_target UNIQUE ("target_id"),
	CONSTRAINT orders_pk PRIMARY KEY ("order_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "weapons" (
	"weapon_id" serial NOT NULL,
	"power_level" serial NOT NULL,
	CONSTRAINT weapons_pk PRIMARY KEY ("weapon_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "pilots" (
	"pilot_id" serial NOT NULL,
	"first_name" TEXT NOT NULL,
	"last_name" TEXT NOT NULL,
	"experience" integer NOT NULL CHECK (experience >= 0),
	CONSTRAINT pilots_pk PRIMARY KEY ("pilot_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "model_info" (
	"model_id" serial NOT NULL,
	"weapon_id" integer NOT NULL,
	"mean_velocity" DECIMAL NOT NULL CHECK (mean_velocity > 0),
	"fuel_consumption" DECIMAL NOT NULL CHECK (fuel_consumption > 0),
	"description" TEXT NOT NULL,
	CONSTRAINT model_info_pk PRIMARY KEY ("model_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "targets_info" (
	"target_id" serial NOT NULL,
	"whose" BOOLEAN NOT NULL,
	"model_id" integer NOT NULL,
	CONSTRAINT targets_info_pk PRIMARY KEY ("target_id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "rls_info" ADD CONSTRAINT "rls_info_fk0" FOREIGN KEY ("target_id") REFERENCES "targets_info"("target_id") ON DELETE RESTRICT;
ALTER TABLE "fighters_in_duty" ADD CONSTRAINT "fighters_in_duty_fk0" FOREIGN KEY ("fighter_id") REFERENCES "fighters_info"("fighter_id") ON DELETE RESTRICT;
ALTER TABLE "fighters_in_duty" ADD CONSTRAINT "fighters_in_duty_fk1" FOREIGN KEY ("order_id") REFERENCES "orders"("order_id") ON DELETE RESTRICT;
ALTER TABLE "fighters_info" ADD CONSTRAINT "fighters_info_fk0" FOREIGN KEY ("model_id") REFERENCES "model_info"("model_id") ON DELETE RESTRICT;
ALTER TABLE "fighters_info" ADD CONSTRAINT "fighters_info_fk1" FOREIGN KEY ("pilot_id") REFERENCES "pilots"("pilot_id") ON DELETE RESTRICT;
ALTER TABLE "orders" ADD CONSTRAINT "orders_fk0" FOREIGN KEY ("target_id") REFERENCES "targets_info"("target_id") ON DELETE RESTRICT;
ALTER TABLE "orders" ADD CONSTRAINT "orders_fk1" FOREIGN KEY ("status_id") REFERENCES "statuses"("status_id") ON DELETE RESTRICT;
ALTER TABLE "model_info" ADD CONSTRAINT "model_info_fk0" FOREIGN KEY ("weapon_id") REFERENCES "weapons"("weapon_id") ON DELETE RESTRICT;
ALTER TABLE "targets_info" ADD CONSTRAINT "targets_info_fk0" FOREIGN KEY ("model_id") REFERENCES "model_info"("model_id") ON DELETE RESTRICT;



--SET GRANTS
GRANT SELECT ON TABLE "fighters_in_duty" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "fighters_in_duty" TO GROUP writers;
GRANT SELECT ON TABLE "orders" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "orders" TO GROUP writers;
GRANT SELECT ON TABLE "statuses" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "statuses" TO GROUP writers;
GRANT SELECT ON TABLE "fighters_info" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "fighters_info" TO GROUP writers;
GRANT SELECT ON TABLE "pilots" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "pilots" TO GROUP writers;
GRANT SELECT ON TABLE "rls_info" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "rls_info" TO GROUP writers;
GRANT SELECT ON TABLE "targets_info" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "targets_info" TO GROUP writers;
GRANT SELECT ON TABLE "model_info" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "model_info" TO GROUP writers;
GRANT SELECT ON TABLE "weapons" TO GROUP readers;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE "weapons" TO GROUP writers;
