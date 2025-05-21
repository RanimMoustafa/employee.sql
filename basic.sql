CREATE Database Employee;
USE Employee;
CREATE TABLE empl_basic (
    empl_code VARCHAR(50) PRIMARY KEY,
    
    first_name_en VARCHAR(100) NOT NULL,
    second_name_en VARCHAR(100) NOT NULL,
    third_name_en VARCHAR(100),
    fourth_name_en VARCHAR(100),
    last_name_en VARCHAR(100) NOT NULL,
    full_name_en VARCHAR(500) GENERATED ALWAYS AS (
        CONCAT_WS(' ', first_name_en, second_name_en, third_name_en, fourth_name_en, last_name_en)
    ) STORED,

    first_name_ar NVARCHAR(100) NOT NULL,
    second_name_ar NVARCHAR(100) NOT NULL,
    third_name_ar NVARCHAR(100) NOT NULL,
    fourth_name_ar NVARCHAR(100),
    last_name_ar NVARCHAR(100) NOT NULL,
    full_name_ar NVARCHAR(500) GENERATED ALWAYS AS (
        CONCAT_WS(' ', first_name_ar, second_name_ar, third_name_ar, fourth_name_ar, last_name_ar)
    ) STORED,

    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);


DROP TABLE employee_basic_data;

