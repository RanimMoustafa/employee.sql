USE Employee;

CREATE TABLE pers_details (
   empl_code VARCHAR(50) PRIMARY KEY,
    
    gender ENUM('Male', 'Female') NOT NULL,
    
    date_of_birth DATE,
    religion VARCHAR(50),
    nationality VARCHAR(50),
    national_id_number VARCHAR(20),
    national_id_issue_date DATE,
    national_id_expiry_date DATE,
    passport_number VARCHAR(30),
    passport_issue_date DATE,
    passport_expiry_date DATE,
    country_of_birth VARCHAR(50),
    city_of_birth VARCHAR(50),
    marital_status VARCHAR(20),
    number_of_dependents INT,
    
    CONSTRAINT fk_empl_pers FOREIGN KEY ( empl_code) REFERENCES empl_basic( empl_code)
     ON DELETE CASCADE
	ON UPDATE CASCADE
) ENGINE=InnoDB;
drop table pers_details;