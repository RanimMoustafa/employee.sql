USE Employee;

CREATE TABLE prev_exper (
    emp_code VARCHAR(50) PRIMARY KEY, -- FK to employee table

    -- Company 1
    comp1_name VARCHAR(255),
    comp1_job_title VARCHAR(255),
    comp1_from DATE,
    comp1_to DATE,
    comp1_duration DECIMAL(5,2) GENERATED ALWAYS AS (
        CASE
            WHEN comp1_from IS NOT NULL AND comp1_to IS NOT NULL THEN
                TIMESTAMPDIFF(MONTH, comp1_from, comp1_to) / 12
            ELSE 0
        END
    ) STORED,

    -- Company 2
    comp2_name VARCHAR(255),
    comp2_job_title VARCHAR(255),
    comp2_from DATE,
    comp2_to DATE,
    comp2_duration DECIMAL(5,2) GENERATED ALWAYS AS (
        CASE
            WHEN comp2_from IS NOT NULL AND comp2_to IS NOT NULL THEN
                TIMESTAMPDIFF(MONTH, comp2_from, comp2_to) / 12
            ELSE 0
        END
    ) STORED,

    -- Company 3
    comp3_name VARCHAR(255),
    comp3_job_title VARCHAR(255),
    comp3_from DATE,
    comp3_to DATE,
    comp3_duration DECIMAL(5,2) GENERATED ALWAYS AS (
        CASE
            WHEN comp3_from IS NOT NULL AND comp3_to IS NOT NULL THEN
                TIMESTAMPDIFF(MONTH, comp3_from, comp3_to) / 12
            ELSE 0
        END
    ) STORED,

    anoth_exper_year DECIMAL(5,2) DEFAULT 0, -- Additional experience in years (fractional)

    total_years_before_zeta DECIMAL(6,2) GENERATED ALWAYS AS (
        comp1_duration + comp2_duration + comp3_duration + COALESCE(anoth_exper_year, 0)
    ) STORED,

    empl_period_years DECIMAL(5,2),  -- Employment period at ZETA (input manually or from another table)

    total_years_including_zeta DECIMAL(6,2) GENERATED ALWAYS AS (
        total_years_before_zeta + COALESCE(empl_period_years, 0)
    ) STORED,  -- **هنا يجب وجود فاصلة**

    CONSTRAINT fk_prev_emp FOREIGN KEY (emp_code)
        REFERENCES empl_basic(empl_code)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

drop table prev_exper;
SELECT
    emp_code,
    comp1_duration,
    comp2_duration,
    comp3_duration,
    anoth_exper_year,
    total_years_before_zeta,
    empl_period_years,
    total_years_including_zeta
FROM prev_exper
WHERE emp_code = 1;

SELECT
    CASE
        WHEN EXISTS (SELECT 1 FROM prev_exper WHERE emp_code = 'emp_code') THEN 'has_experience'
        ELSE 'no_experience'
    END AS experience_status;




