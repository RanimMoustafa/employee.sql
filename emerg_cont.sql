USE Employee;


CREATE TABLE emerg_cont (
    empl_code VARCHAR(50) PRIMARY KEY,  

    contact_person_name VARCHAR(255) NOT NULL,
    relation VARCHAR(100) NOT NULL,           
    phone_country_code VARCHAR(10),           
    mobile_number VARCHAR(20) NOT NULL,

    CONSTRAINT fk_emergcont_empl FOREIGN KEY (empl_code) REFERENCES empl_basic(Empl_code)
    
       ON DELETE CASCADE
        ON UPDATE CASCADE
);

drop table emerg_cont;