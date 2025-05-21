USE Employee;

CREATE TABLE work_rela_termin (
    empl_code VARCHAR(50) PRIMARY KEY,  

    termination_type VARCHAR(100) NOT NULL,           
    termination_reason VARCHAR(100) NOT NULL,         
    notification_date DATE NOT NULL,                  
    last_work_day DATE NOT NULL,                       
    has_subordinate BOOLEAN NOT NULL DEFAULT FALSE,  
    
    reassign_subordinate VARCHAR(255),                
    revoke_access_disable VARCHAR(100) NOT NULL,      
    recommendation_for_rehire VARCHAR(100) NOT NULL,  
    comments TEXT,

    CONSTRAINT fk_workrela_empl FOREIGN KEY (empl_code) REFERENCES empl_basic(Empl_code)
);


drop table  work_rela_termin;