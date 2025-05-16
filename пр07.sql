CREATE TABLE level (code serial PRIMARY KEY NOT NULL,
				   number_level int NOT NULL);
CREATE TABLE status_job (code serial PRIMARY KEY NOT NULL,
						repair_job varchar(15) NOT NULL);
CREATE TABLE brand (code serial PRIMARY KEY NOT NULL,
				   name varchar(20) NOT NULL);
CREATE TABLE model (code serial PRIMARY KEY NOT NULL,
					title varchar(20) NOT NULL,
					brand int NOT NULL REFERENCES brand(code));
CREATE TABLE type_body (code serial PRIMARY KEY NOT NULL,
						description varchar(20) NOT NULL);
CREATE TABLE car_mechanic (table_number serial PRIMARY KEY NOT NULL,
						   date_of_birth date NOT NULL,
						   level int NOT NULL REFERENCES level(code),
						   last_name varchar(50) NOT NULL,
						   first_name varchar(50) NOT NULL,
						   third_name varchar(50) NULL);
CREATE TABLE car (number serial PRIMARY KEY NOT NULL,
				  brand int NOT NULL REFERENCES brand(code),
				  model int NOT NULL REFERENCES model(code),
				  color varchar(20) NOT NULL,
				  type_body int NOT NULL REFERENCES type_body(code),
				  years_extract int NOT NULL);
CREATE TABLE repair (
	number serial PRIMARY KEY NOT NULL,
	car int NOT NULL REFERENCES car(number),
	date date NOT NULL,
	PROBLEM_REPORT text NOT NULL,
	status int NOT NULL REFERENCES status_job(code));
CREATE TABLE renovates (car_mechanic int NOT NULL REFERENCES car_mechanic(table_number),
						repair int NOT NULL REFERENCES repair(number),
					   PRIMARY KEY(car_mechanic, repair));