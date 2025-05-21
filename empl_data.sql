USE Employee;

CREATE TABLE Empl_Data (
    Empl_code VARCHAR(50) PRIMARY KEY, -- FK to empl_basic(Empl_code)
    
    DateOfHireGregorian DATE NOT NULL,
    DateOfHireHijry DATE,

    LegalEmployer VARCHAR(100),

    PositionEnglish VARCHAR(100) NOT NULL,
    PositionArabic VARCHAR(100),

    WorkLocation VARCHAR(100) NOT NULL,
    Sector VARCHAR(100) NOT NULL,

    DepartmentEnglish VARCHAR(100) NOT NULL,
    DepartmentArabic VARCHAR(100),

    Section VARCHAR(100) NOT NULL,
    BusinessUnit VARCHAR(100),
    Line VARCHAR(100),
    Area VARCHAR(100),
    Governorate VARCHAR(100),
    Brick VARCHAR(100),

    WorkNature VARCHAR(100) NOT NULL,
    EmploymentType VARCHAR(100) NOT NULL,
    JobGrade VARCHAR(100),
    JobLevel VARCHAR(100),

    StandardWorkScheduleFrom TIME,
    StandardWorkScheduleTo TIME,

    StandardWorkingHoursFrom TIME,
    StandardWorkingHoursTo TIME,

    OvertimeEligibility BOOLEAN,
    SalaryType VARCHAR(50),

    DueAnnualVacationDays INT,
    AnnualVacationEffectiveDate DATE GENERATED ALWAYS AS (DATE_ADD(DateOfHireGregorian, INTERVAL 90 DAY)) STORED,

    RequireFingerprint BOOLEAN,
    FingerprintCode VARCHAR(20),

    HiringReason VARCHAR(100),
    Rehire BOOLEAN,

    ReplacementOfCode VARCHAR(20),
    ReplacementOfName VARCHAR(100),

    DirectManagerCode VARCHAR(50) NOT NULL,
    DirectManagerName VARCHAR(100) NOT NULL,

    SecondManagerCode VARCHAR(50),
    SecondManagerName VARCHAR(100),

    ThirdManagerCode VARCHAR(50),
    ThirdManagerName VARCHAR(100),

    HasDirectSubordinates BOOLEAN,

    Subordinate1EmpCode VARCHAR(50),
    Subordinate1Name VARCHAR(100),

    CONSTRAINT fk_emplcode FOREIGN KEY (Empl_code) REFERENCES empl_basic(Empl_code)
ON DELETE CASCADE
ON UPDATE CASCADE
);

DROP TABLE Empl_Data;