CREATE TABLE patient(
 id SERIAL PRIMARY KEY NOT NULL,
 name VARCHAR(60),
 date_of_birth DATE
);
CREATE TABLE medical_histories(
 id SERIAL PRIMARY KEY NOT NULL,
 admited_at TIMESTAMP,
 patient_id INT REFERENCES patient(id),
 status VARCHAR(60)
);

CREATE INDEX ON medical_histories (patient_id);