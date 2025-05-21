USE Employee;

CREATE TABLE Hir_Doc (
    Empl_code VARCHAR(50) PRIMARY KEY,
    induction_form BOOLEAN DEFAULT FALSE,
    birth_certificate BOOLEAN DEFAULT FALSE,
    education_certificate BOOLEAN DEFAULT FALSE,
    military_service_certificate BOOLEAN DEFAULT FALSE,
    national_id_copy BOOLEAN DEFAULT FALSE,
    photos BOOLEAN DEFAULT FALSE,
    criminal_record BOOLEAN DEFAULT FALSE,
    work_permit BOOLEAN DEFAULT FALSE,
    ka3b_al3amal BOOLEAN DEFAULT FALSE,
    rad_ka3b_al3amal BOOLEAN DEFAULT FALSE,
    form_6 BOOLEAN DEFAULT FALSE,
    social_insurance_print BOOLEAN DEFAULT FALSE,
    form_111 BOOLEAN DEFAULT FALSE,
    syndicate_card BOOLEAN DEFAULT FALSE,
    previous_work_clearance BOOLEAN DEFAULT FALSE,
    experience_letter BOOLEAN DEFAULT FALSE,
    government_unpaid_vacation BOOLEAN DEFAULT FALSE,
    government_unpaid_vacation_end_date DATE DEFAULT NULL,
    car_license BOOLEAN DEFAULT FALSE,
    driving_license BOOLEAN DEFAULT FALSE,
    igha_takleef BOOLEAN DEFAULT FALSE,
    shaha_sahiya BOOLEAN DEFAULT FALSE,
    qiyas_maharah BOOLEAN DEFAULT FALSE,
    cv BOOLEAN DEFAULT FALSE,
    application BOOLEAN DEFAULT FALSE,
    job_offer_letter BOOLEAN DEFAULT FALSE,
    job_offer_issue_date DATE DEFAULT NULL,
    acknowledgments BOOLEAN DEFAULT FALSE,
    penalty BOOLEAN DEFAULT FALSE,
    one_month BOOLEAN DEFAULT FALSE,
      FOREIGN KEY (Empl_code) REFERENCES empl_basic(Empl_code)
      ON DELETE CASCADE
       ON UPDATE CASCADE
);
DROP table HiringDocuments;