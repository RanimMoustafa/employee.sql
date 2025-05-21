USE Employee;

CREATE TABLE allowances (
    empl_code VARCHAR(50) PRIMARY KEY,  -- FK to empl_basic

    car_allowance DECIMAL(15,2) DEFAULT 0,
    cola DECIMAL(15,2) DEFAULT 0,                      -- Cost of Living Adjustments
    housing_allowance DECIMAL(15,2) DEFAULT 0,
    internet_allowance DECIMAL(15,2) DEFAULT 0,
    job_nature_allowance DECIMAL(15,2) DEFAULT 0,
    job_risk_allowance DECIMAL(15,2) DEFAULT 0,
    meal_allowance DECIMAL(15,2) DEFAULT 0,
    mobile_allowance DECIMAL(15,2) DEFAULT 0,
    other_fixed_allowance DECIMAL(15,2) DEFAULT 0,
    representation_allowance DECIMAL(15,2) DEFAULT 0,
    transportation_allowance DECIMAL(15,2) DEFAULT 0,

    CONSTRAINT fk_allowances_empl FOREIGN KEY (empl_code) REFERENCES empl_basic(Empl_code)
      ON DELETE CASCADE
	ON UPDATE CASCADE
);
drop table allowances;