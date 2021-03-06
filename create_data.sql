INSERT INTO "weapons" (weapon_id, power_level) VALUES (0, 10);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (1, 0);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (2, 13);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (3, 0);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (4, 3);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (5, 8);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (6, 7);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (7, 13);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (8, 9);
INSERT INTO "weapons" (weapon_id, power_level) VALUES (9, 3);


INSERT INTO "statuses" (status_id, status_description) VALUES (0, 'Completed');
INSERT INTO "statuses" (status_id, status_description) VALUES (1, 'In queгу');
INSERT INTO "statuses" (status_id, status_description) VALUES (2, 'In progress');
INSERT INTO "statuses" (status_id, status_description) VALUES (3, 'Failed, target missed');
INSERT INTO "statuses" (status_id, status_description) VALUES (4, 'Failed, fighter destroyed');


INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (0, 'Виктор', 'Кузнецов', 20);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (1, 'Николай', 'Иванов', 20);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (2, 'Александр', 'Кузнецов', 17);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (3, 'Николай', 'Новиков', 6);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (4, 'Владимир', 'Смирнов', 15);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (5, 'Сергей', 'Соколов', 19);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (6, 'Александр', 'Петров', 8);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (7, 'Дмитрий', 'Федоров', 19);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (8, 'Николай', 'Сидоров', 3);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (9, 'Михаил', 'Новиков', 10);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (10, 'Алексей', 'Сидоров', 1);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (11, 'Сергей', 'Иванов', 16);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (12, 'Алексей', 'Соколов', 15);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (13, 'Владимир', 'Сидоров', 15);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (14, 'Михаил', 'Морозов', 12);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (15, 'Виктор', 'Сидоров', 18);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (16, 'Михаил', 'Петров', 10);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (17, 'Юрий', 'Соколов', 13);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (18, 'Андрей', 'Иванов', 9);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (19, 'Виктор', 'Федоров', 2);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (20, 'Михаил', 'Соколов', 11);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (21, 'Виктор', 'Новиков', 7);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (22, 'Владимир', 'Петров', 5);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (23, 'Юрий', 'Федоров', 19);
INSERT INTO "pilots" (pilot_id, first_name, last_name, experience) VALUES (24, 'Николай', 'Соколов', 10);


INSERT INTO "model_info" (model_id, weapon_id, mean_velocity, fuel_consumption, description) VALUES (0, 0, 2500, 600, 'МИГ-29');
INSERT INTO "model_info" (model_id, weapon_id, mean_velocity, fuel_consumption, description) VALUES (1, 1, 2700, 650, 'МИГ-31');
INSERT INTO "model_info" (model_id, weapon_id, mean_velocity, fuel_consumption, description) VALUES (2, 2, 2800, 620, 'МИГ-35');
INSERT INTO "model_info" (model_id, weapon_id, mean_velocity, fuel_consumption, description) VALUES (3, 3, 2500, 670, 'СУ-27');
INSERT INTO "model_info" (model_id, weapon_id, mean_velocity, fuel_consumption, description) VALUES (4, 4, 2400, 660, 'F-15');
INSERT INTO "model_info" (model_id, weapon_id, mean_velocity, fuel_consumption, description) VALUES (5, 5, 2600, 600, 'F-18');
INSERT INTO "model_info" (model_id, weapon_id, mean_velocity, fuel_consumption, description) VALUES (6, 6, 2700, 640, 'F-35');
INSERT INTO "model_info" (model_id, weapon_id, mean_velocity, fuel_consumption, description) VALUES (7, 7, 1500, 600, 'Unknown');


INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (0, False, 5);
INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (1, False, 4);
INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (2, False, 5);
INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (3, False, 6);
INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (4, False, 5);
INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (5, False, 6);
INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (6, False, 4);
INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (7, True, 7);
INSERT INTO "targets_info" (target_id, whose, model_id) VALUES (8, True, 7);


INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:28:43', 150.0, 300.0, 8.67);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:28:46', 151.8, 300.23, 8.73);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:28:49', 153.64, 300.46, 8.66);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:28:52', 155.4, 300.6, 8.65);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:28:55', 157.32, 300.96, 8.73);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:28:58', 159.15, 301.15, 8.74);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:01', 160.92, 301.38, 8.69);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:04', 162.6, 301.54, 8.66);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:07', 164.56, 301.92, 8.73);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:10', 166.38, 301.98, 8.7);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:13', 168.2, 302.4, 8.65);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:16', 170.13, 302.42, 8.65);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:19', 171.6, 302.64, 8.71);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:22', 173.53, 302.73, 8.73);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:25', 175.34, 303.08, 8.7);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:28', 177.0, 303.6, 8.74);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:31', 178.8, 303.52, 8.65);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:34', 180.77, 303.74, 8.7);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:37', 182.76, 303.6, 8.73);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:40', 184.77, 303.8, 8.72);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:43', 186.6, 304.8, 8.7);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:46', 187.8, 304.83, 8.67);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:49', 190.48, 304.84, 8.7);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:52', 191.86, 304.6, 8.7);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (0, '2019-04-30 21:29:55', 194.16, 305.52, 8.68);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:28:43', 200.0, 200.0, 8.12);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:28:46', 200.14, 201.91, 8.06);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:28:49', 200.28, 203.86, 8.11);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:28:52', 200.36, 205.76, 8.07);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:28:55', 200.4, 207.6, 8.08);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:28:58', 200.6, 209.6, 8.08);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:01', 200.78, 211.46, 8.07);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:04', 200.91, 213.44, 8.12);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:07', 200.96, 215.52, 8.13);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:10', 200.99, 217.19, 8.05);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:13', 201.4, 219.2, 8.1);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:16', 201.32, 221.12, 8.13);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:19', 201.44, 223.04, 8.11);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:22', 201.56, 225.22, 8.13);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:25', 201.54, 226.74, 8.09);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:28', 201.5, 228.8, 8.12);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:31', 201.92, 230.4, 8.09);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:34', 202.04, 232.47, 8.08);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:37', 201.98, 234.56, 8.08);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:40', 202.47, 236.86, 8.09);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:43', 202.8, 238.0, 8.08);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:46', 202.1, 239.9, 8.09);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:49', 202.42, 242.02, 8.14);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:52', 202.76, 244.39, 8.12);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (1, '2019-04-30 21:29:55', 202.4, 246.08, 8.07);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:28:43', 100.0, 200.0, 7.12);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:28:46', 101.61, 200.09, 7.11);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:28:49', 103.2, 200.1, 7.14);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:28:52', 104.83, 200.21, 7.06);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:28:55', 106.48, 200.2, 7.07);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:28:58', 108.1, 200.4, 7.06);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:01', 109.72, 200.54, 7.1);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:04', 111.48, 200.56, 7.09);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:07', 112.96, 200.4, 7.09);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:10', 114.49, 200.54, 7.05);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:13', 116.0, 200.5, 7.14);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:16', 117.82, 200.77, 7.06);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:19', 119.56, 201.08, 7.08);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:22', 121.19, 200.78, 7.07);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:25', 122.4, 201.12, 7.06);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:28', 124.15, 201.2, 7.06);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:31', 125.6, 200.96, 7.07);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:34', 127.54, 200.85, 7.14);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:37', 129.34, 200.9, 7.13);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:40', 131.16, 200.95, 7.06);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:43', 132.4, 201.8, 7.05);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:46', 134.23, 201.47, 7.09);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:49', 135.42, 201.1, 7.06);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:52', 136.8, 202.07, 7.09);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (2, '2019-04-30 21:29:55', 138.64, 202.16, 7.05);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:28:43', 100.0, 100.0, 6.77);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:28:46', 101.14, 101.14, 6.75);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:28:49', 102.28, 102.32, 6.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:28:52', 103.48, 103.45, 6.83);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:28:55', 104.56, 104.52, 6.81);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:28:58', 105.7, 105.7, 6.82);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:01', 106.84, 106.96, 6.81);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:04', 108.05, 107.91, 6.83);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:07', 109.12, 109.12, 6.77);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:10', 110.08, 110.17, 6.84);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:13', 111.6, 111.3, 6.8);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:16', 112.32, 112.43, 6.75);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:19', 113.8, 113.56, 6.84);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:22', 114.56, 114.82, 6.84);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:25', 115.68, 115.82, 6.76);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:28', 116.8, 117.4, 6.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:31', 118.08, 118.08, 6.84);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:34', 119.72, 119.72, 6.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:37', 120.16, 120.88, 6.77);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:40', 121.28, 121.47, 6.81);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:43', 122.6, 122.4, 6.83);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:46', 124.36, 123.94, 6.82);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:49', 124.64, 125.52, 6.79);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:52', 125.99, 125.99, 6.76);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (3, '2019-04-30 21:29:55', 126.88, 127.6, 6.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:28:44', 70.0, 80.0, 7.67);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:28:47', 71.33, 81.0, 7.71);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:28:50', 72.68, 82.06, 7.71);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:28:53', 73.93, 83.0, 7.68);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:28:56', 75.28, 84.04, 7.69);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:28:59', 76.5, 85.05, 7.71);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:02', 77.92, 86.06, 7.73);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:05', 79.17, 87.28, 7.72);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:08', 80.48, 88.0, 7.71);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:11', 81.79, 89.27, 7.67);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:14', 83.0, 90.4, 7.69);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:17', 84.41, 91.33, 7.66);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:20', 85.6, 92.48, 7.7);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:23', 86.9, 93.0, 7.66);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:26', 88.76, 94.14, 7.68);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:29', 89.5, 95.0, 7.66);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:32', 90.8, 96.64, 7.65);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:35', 92.27, 97.68, 7.69);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:38', 93.58, 98.72, 7.71);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:41', 95.27, 99.0, 7.65);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:44', 96.4, 100.8, 7.71);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:47', 97.72, 101.21, 7.66);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:50', 99.04, 102.66, 7.69);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:53', 99.9, 103.23, 7.69);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (4, '2019-04-30 21:29:56', 101.2, 104.72, 7.73);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:28:43', 30.0, 50.0, 8.51);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:28:46', 31.21, 51.08, 8.54);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:28:49', 32.36, 52.12, 8.47);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:28:52', 33.6, 53.15, 8.48);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:28:55', 34.84, 54.36, 8.45);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:28:58', 36.05, 55.3, 8.49);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:01', 37.08, 56.36, 8.47);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:04', 38.26, 57.42, 8.52);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:07', 39.36, 58.56, 8.47);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:10', 40.71, 59.72, 8.45);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:13', 42.1, 60.6, 8.53);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:16', 43.2, 61.99, 8.49);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:19', 44.28, 62.72, 8.49);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:22', 45.73, 64.17, 8.5);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:25', 46.52, 64.7, 8.53);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:28', 47.55, 65.75, 8.52);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:31', 49.2, 67.44, 8.46);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:34', 50.4, 68.36, 8.45);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:37', 51.78, 69.44, 8.51);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:40', 52.99, 70.71, 8.53);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:43', 53.4, 71.2, 8.48);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:46', 54.78, 72.47, 8.53);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:49', 55.96, 73.98, 8.47);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:52', 56.91, 74.84, 8.5);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (5, '2019-04-30 21:29:55', 58.8, 75.2, 8.53);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:28:43', 20.0, 40.0, 8.79);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:28:46', 21.53, 40.52, 8.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:28:49', 23.08, 41.08, 8.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:28:52', 24.62, 41.5, 8.81);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:28:55', 26.08, 42.12, 8.76);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:28:58', 27.55, 42.5, 8.76);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:01', 29.18, 43.0, 8.81);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:04', 30.57, 43.57, 8.79);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:07', 32.08, 44.32, 8.81);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:10', 33.86, 44.68, 8.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:13', 35.2, 45.1, 8.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:16', 36.83, 45.83, 8.8);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:19', 38.12, 46.48, 8.76);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:22', 39.89, 46.63, 8.8);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:25', 41.28, 47.28, 8.84);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:28', 42.65, 47.65, 8.83);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:31', 44.0, 48.64, 8.78);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:34', 45.84, 49.01, 8.75);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:37', 47.18, 49.36, 8.82);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:40', 48.88, 49.69, 8.75);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:43', 50.8, 50.4, 8.81);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:46', 52.34, 51.34, 8.82);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:49', 53.22, 51.0, 8.75);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:52', 55.19, 51.96, 8.76);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (6, '2019-04-30 21:29:55', 56.96, 52.96, 8.84);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:28:43', 150.0, 200.0, 9.2);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:28:46', 151.15, 201.09, 9.22);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:28:49', 152.32, 202.16, 9.16);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:28:52', 153.45, 203.21, 9.19);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:28:55', 154.72, 204.24, 9.23);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:28:58', 155.75, 205.25, 9.18);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:01', 157.14, 206.48, 9.19);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:04', 158.33, 207.35, 9.23);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:07', 159.52, 208.64, 9.22);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:10', 160.35, 209.54, 9.17);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:13', 161.7, 210.8, 9.24);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:16', 162.76, 211.99, 9.2);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:19', 164.16, 212.72, 9.24);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:22', 165.47, 214.17, 9.18);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:25', 166.38, 214.84, 9.19);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:28', 167.85, 215.9, 9.2);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:31', 168.88, 217.28, 9.15);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:34', 169.55, 218.02, 9.24);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:37', 170.7, 219.26, 9.16);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:40', 172.42, 220.52, 9.21);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:43', 173.2, 221.0, 9.19);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:46', 174.36, 222.26, 9.24);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:49', 175.96, 223.76, 9.19);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:52', 177.37, 224.15, 9.16);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (7, '2019-04-30 21:29:55', 177.6, 225.68, 9.24);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:28:43', 250.0, 220.0, 9.64);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:28:46', 251.41, 220.27, 9.63);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:28:49', 252.84, 220.56, 9.63);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:28:52', 254.26, 220.78, 9.58);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:28:55', 255.64, 221.08, 9.57);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:28:58', 257.15, 221.4, 9.57);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:01', 258.58, 221.62, 9.58);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:04', 260.08, 221.89, 9.55);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:07', 261.44, 222.24, 9.57);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:10', 262.87, 222.25, 9.59);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:13', 264.4, 222.9, 9.62);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:16', 265.62, 222.86, 9.57);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:19', 267.04, 223.0, 9.6);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:22', 268.72, 223.77, 9.56);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:25', 270.16, 224.06, 9.64);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:28', 271.45, 224.35, 9.58);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:31', 272.56, 224.0, 9.62);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:34', 273.8, 224.76, 9.64);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:37', 275.74, 225.04, 9.64);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:40', 276.6, 225.51, 9.61);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:43', 278.4, 225.4, 9.55);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:46', 279.4, 225.67, 9.62);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:49', 281.46, 225.5, 9.6);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:52', 282.43, 226.21, 9.55);
INSERT INTO "rls_info" (target_id, update_time, x, y, z) VALUES (8, '2019-04-30 21:29:55', 284.32, 226.72, 9.59);


INSERT INTO "orders" (order_id, target_id, status_id, start_time, update_time) VALUES (0, 2, 0, '2019-04-30 21:28:43', '2019-04-30 21:45:43');
INSERT INTO "orders" (order_id, target_id, status_id, start_time, update_time) VALUES (1, 1, 1, '2019-04-30 21:28:43', '2019-04-30 21:46:43');
INSERT INTO "orders" (order_id, target_id, status_id, start_time, update_time) VALUES (2, 5, 4, '2019-04-30 21:28:43', '2019-04-30 21:38:43');
INSERT INTO "orders" (order_id, target_id, status_id, start_time, update_time) VALUES (3, 3, 2, '2019-04-30 21:29:43', '2019-04-30 21:43:43');
INSERT INTO "orders" (order_id, target_id, status_id, start_time, update_time) VALUES (4, 4, 2, '2019-04-30 21:29:43', '2019-04-30 21:39:43');
INSERT INTO "orders" (order_id, target_id, status_id, start_time, update_time) VALUES (5, 6, 2, '2019-04-30 21:28:43', '2019-04-30 21:38:43');


INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (0, 0, 9613.54, 2, 37.37, 199.89, 7.44);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (1, 3, 9206.7, 13, 544.42, 425.98, 6.29);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (2, 1, 9267.58, 7, 288.78, 688.42, 10.4);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (3, 0, 9383.25, 15, 739.39, 92.63, 9.86);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (4, 3, 8031.3, 4, 156.2, 234.8, 9.26);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (5, 0, 8469.42, 10, 462.65, 375.18, 7.38);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (6, 3, 9906.99, 5, 256.21, 706.41, 9.6);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (7, 2, 8681.48, 0, 683.24, 96.38, 5.15);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (8, 0, 8426.22, 19, 83.32, 186.72, 6.78);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (9, 3, 9876.92, 18, 504.84, 385.55, 7.73);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (10, 0, 8399.78, 21, 245.37, 687.05, 10.47);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (11, 2, 8903.99, 8, 653.98, 124.48, 6.99);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (12, 0, 8638.78, 23, 166.13, 163.01, 9.08);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (13, 0, 9059.09, 17, 471.1, 392.48, 8.74);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (14, 2, 8069.71, 24, 260.99, 711.12, 7.73);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (15, 3, 9227.21, 22, 637.48, 66.87, 7.1);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (16, 0, 9414.46, 20, 168.62, 194.66, 6.81);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (17, 0, 8021.22, 3, 441.9, 397.29, 8.73);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (18, 1, 9419.45, 6, 288.11, 696.6, 8.46);
INSERT INTO "fighters_info" (fighter_id, model_id, fuel_level, pilot_id, x, y, z) VALUES (19, 0, 9878.81, 16, 625.79, 113.45, 5.1);


INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (15, 4);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (10, 1);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (6, 0);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (16, 2);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (1, 2);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (18, 5);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (13, 5);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (11, 0);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (4, 0);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (9, 4);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (5, 1);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (7, 1);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (19, 5);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (0, 4);
INSERT INTO "fighters_in_duty" (fighter_id, order_id) VALUES (14, 4);


