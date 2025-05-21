USE Employee;

CREATE TABLE SalaryDetails (
    empl_code VARCHAR(50) PRIMARY KEY,  

    basic_salary DECIMAL(15,2) NOT NULL COMMENT 'Basic Salary / الراتب الأساسي',
    zeta_salary DECIMAL(15,2) NOT NULL COMMENT 'Zeta Salary / الراتب التأميني',
    social_insurance_salary DECIMAL(15,2) NOT NULL COMMENT 'Social Insurance Salary / الراتب التأميني',
    comprehensive_salary DECIMAL(15,2) NOT NULL COMMENT 'Comprehensive Salary / الراتب الشامل',

    CONSTRAINT fk_salary_empl FOREIGN KEY (empl_code) REFERENCES empl_basic(Empl_code)
);
