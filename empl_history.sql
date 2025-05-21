USE Employee;

CREATE TABLE empl_history (
    empl_code VARCHAR(50) PRIMARY KEY,  -- FK to empl_basic

    promotion_date_1 DATE,
    new_job_title_1 VARCHAR(255),
    new_department_1 VARCHAR(100),

    promotion_date_2 DATE,
    new_job_title_2 VARCHAR(255),
    new_department_2 VARCHAR(100),

    promotion_date_3 DATE,
    new_job_title_3 VARCHAR(255),
    new_department_3 VARCHAR(100),

    promotion_date_4 DATE,
    new_job_title_4 VARCHAR(255),
    new_department_4 VARCHAR(100),

    CONSTRAINT fk_emplhistory_empl FOREIGN KEY (empl_code) REFERENCES empl_basic(Empl_code)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

drop table empl_history;
SHOW CREATE TABLE empl_basic;

CREATE TABLE empl_history_records (
    emp_code VARCHAR(20) NOT NULL,
    promotion_date DATE,
    new_job_title VARCHAR(255),
    new_department VARCHAR(100),
    FOREIGN KEY (emp_code) REFERENCES empl_basic(empl_code)
    ON DELETE CASCADE
        ON UPDATE CASCADE
);
drop table empl_history_records;