USE Employee;

CREATE TABLE emplo_contr (

    Empl_code VARCHAR(50) PRIMARY KEY,  

    contr_type VARCHAR(50) NOT NULL,
    contr_duration_days INT NOT NULL,

    contra_issuance_date DATE NOT NULL,
    contr_expiry_date DATE,

    contr_renewal_date DATE,
    contr_renewal_notification_date DATE,

    notif_status VARCHAR(50),

    probation_period_end_date DATE,
    probation_period_notification_date DATE,

    CONSTRAINT fk_contr_employee FOREIGN KEY (Empl_code) REFERENCES empl_basic(Empl_code)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


