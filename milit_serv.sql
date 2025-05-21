USE Employee;


CREATE TABLE milit_serv (
    empl_code VARCHAR(50) PRIMARY KEY,  
    milit_status VARCHAR(100) NOT NULL,            
    completion_date DATE NULL,                         
    certificate_issue_date DATE NULL,                
    certificate_end_date DATE NULL,
    
    CONSTRAINT fk_milit_empl FOREIGN KEY (empl_code) REFERENCES empl_basic(Empl_code)
);

DROP table milit_serv; 
SELECT
  p.empl_code,
  p.gender,
  CASE WHEN p.gender = 'male' THEN ms.milit_status ELSE NULL END AS milit_status,
  CASE WHEN p.gender = 'male' THEN ms.completion_date ELSE NULL END AS completion_date,
  CASE WHEN p.gender = 'male' THEN ms.certificate_issue_date ELSE NULL END AS milit_certificate_issue_date,
  CASE WHEN p.gender = 'male' THEN ms.certificate_end_date ELSE NULL END AS milit_certificate_end_date
FROM pers_details p
LEFT JOIN milit_serv ms ON p.empl_code = ms.empl_code
LIMIT 0, 1000;





