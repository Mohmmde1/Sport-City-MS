USE scm;

ALTER TABLE facilities
ADD COLUMN price double;

ALTER TABLE bookings
MODIFY COLUMN start_date timestamp,
MODIFY COLUMN end_date timestamp;

ALTER TABLE bookings
ADD COLUMN equipment_id int,
ADD FOREIGN KEY (equipment_id) REFERENCES equipments(id);