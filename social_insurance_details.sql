USE Employee;

CREATE TABLE social_insurance_details (

    Empl_code VARCHAR(50) PRIMARY KEY, 

    social_insurance_number VARCHAR(20) NOT NULL,  
    social_insurance_status VARCHAR(50),          
    reason_for_not_insured VARCHAR(255),          
    title VARCHAR(100),                           

    insurance_start_date DATE,
    insurance_end_date DATE,

    change_title_1 VARCHAR(100),
    change_title_date_1 DATE,

    change_title_2 VARCHAR(100),
    change_title_date_2 DATE,

    governmental_medical_card_number VARCHAR(50),
    governmental_medical_card_issue_date DATE,

    CHECK (social_insurance_number REGEXP '^[0-9]+$'),

    CONSTRAINT fk_social_insurance_employee FOREIGN KEY (Empl_code) REFERENCES empl_basic(Empl_code)
ON DELETE CASCADE
ON UPDATE CASCADE
);

drop table social_insurance_details;