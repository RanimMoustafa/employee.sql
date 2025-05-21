USE Employee;

CREATE TABLE Contacts (

   Empl_code VARCHAR(50) PRIMARY KEY,   

    country_of_residency VARCHAR(100),
    residency_governorate VARCHAR(100),

    business_email VARCHAR(255),
    business_data_number VARCHAR(50),

    phone1_type ENUM('personal_1', 'personal_2', 'business'),
    phone1_country_code VARCHAR(10),
    phone1_number VARCHAR(20),

    phone2_type ENUM('personal_1', 'personal_2', 'business'),
    phone2_country_code VARCHAR(10),
    phone2_number VARCHAR(20),

    phone3_type ENUM('personal_1', 'personal_2', 'business'),
    phone3_country_code VARCHAR(10),
    phone3_number VARCHAR(20),

  
    email1_type ENUM('personal_1', 'personal_2', 'business'),
    email1_address VARCHAR(255),

    email2_type ENUM('personal_1', 'personal_2', 'business'),
    email2_address VARCHAR(255),

    email3_type ENUM('personal_1', 'personal_2', 'business'),
    email3_address VARCHAR(255),

    address1_type ENUM('residency_1', 'residency_2'),
    address1_text TEXT,

    address2_type ENUM('residency_1', 'residency_2'),
    address2_text TEXT,

    CONSTRAINT fk_contact_empl FOREIGN KEY (Empl_code) REFERENCES empl_basic(Empl_code)
    ON DELETE CASCADE
      ON UPDATE CASCADE
);





