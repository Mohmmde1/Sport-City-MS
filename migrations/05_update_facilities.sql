Use scm;

ALTER TABLE facilities
ADD COLUMN status VARCHAR(255) NOT NULL DEFAULT 'Available',
ADD COLUMN employee_id INT,
ADD COLUMN from_date DATE ,
ADD COLUMN to_date DATE ,
ADD CONSTRAINT fk_facilities_employee_id
  FOREIGN KEY (employee_id) REFERENCES employees (id);
