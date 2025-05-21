USE Employee;
SHOW COLUMNS FROM empl_basic LIKE 'empl_code';

SHOW TABLE STATUS WHERE Name='empl_basic';
SHOW TABLE STATUS WHERE Name='car_owner';

SHOW COLUMNS FROM empl_basic LIKE 'empl_code';
SHOW INDEX FROM empl_basic WHERE Column_name = 'empl_code';
SHOW TABLE STATUS WHERE Name='empl_basic';



CREATE TABLE car_owner (
    empl_code VARCHAR(50) PRIMARY KEY,
    own_car BOOLEAN NOT NULL DEFAULT FALSE,
    type_brand VARCHAR(100),
    model VARCHAR(100),
    model_year YEAR,
    first_kilometer_reading INT,
    license_holder_name VARCHAR(150),
    power_of_attorney VARCHAR(150),
    license_issue_date DATE,
    license_expiry_date DATE,
    CONSTRAINT fk_employee FOREIGN KEY (empl_code) REFERENCES empl_basic(empl_code)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB; 


DESCRIBE Empl_Data;
SELECT DISTINCT PositionEnglish FROM Empl_Data;

SELECT
    e.Empl_code,
    e.PositionEnglish,
    e.PositionArabic,
    c.own_car,
    c.type_brand,
    c.model,
    c.model_year,
    c.first_kilometer_reading,
    c.license_holder_name,
    c.power_of_attorney,
    c.license_issue_date,
    c.license_expiry_date
FROM
    Empl_data e
JOIN
    car_owner c ON e.Empl_code = c.empl_code
WHERE
    e.PositionEnglish = 'salles'
LIMIT 0, 1000;
