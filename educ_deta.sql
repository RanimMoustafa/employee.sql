USE Employee;

CREATE TABLE educ_deta (
    educ_id INT AUTO_INCREMENT PRIMARY KEY,  -- optional, if you want a unique ID

    Empl_code VARCHAR(50) NOT NULL,           -- FK to empl_basic

    educ_degree VARCHAR(100),                  -- Configuration (e.g., Bachelor, Diploma)
    univ_insti VARCHAR(255),
    faculty_school VARCHAR(255),
    section VARCHAR(255),
    grad_year YEAR,                            -- YEAR type
    grade VARCHAR(50),

    -- Post-Graduate Education
    post_grad_study_degree VARCHAR(100),
    post_grad_university_institution VARCHAR(255),
    post_grad_specialization_major VARCHAR(255),
    post_grad_faculty VARCHAR(255),
    post_grad_graduation_year YEAR,
    post_grad_grade VARCHAR(50),

    CONSTRAINT fk_educ_employee FOREIGN KEY (Empl_code) REFERENCES empl_basic(Empl_code)
     ON DELETE CASCADE
      ON UPDATE CASCADE
);

drop table educ_deta;