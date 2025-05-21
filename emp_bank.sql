USE Employee;

CREATE TABLE emp_bank(
   empl_code VARCHAR(50) PRIMARY KEY,  -- ربط بالحساب الأساسي للموظف

    account_type ENUM('Bank Account 1', 'Bank Account 2') NOT NULL,  

    bank_name VARCHAR(255),            
    branch_code VARCHAR(50),           
    branch_address VARCHAR(255),        
    bank_account_no VARCHAR(50),        
    customer_id VARCHAR(50),            
    iban VARCHAR(100),                 
    account_holder_name VARCHAR(255),  

    CONSTRAINT fk_empl_code FOREIGN KEY (empl_code)
        REFERENCES empl_basic(empl_code)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


