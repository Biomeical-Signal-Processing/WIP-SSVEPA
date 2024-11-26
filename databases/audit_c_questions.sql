
CREATE TABLE AUDIT_C_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'Never',
    scoring_option_1 TEXT NOT NULL DEFAULT 'Monthly or less',
    scoring_option_2 TEXT NOT NULL DEFAULT '2-4 times a month',
    scoring_option_3 TEXT NOT NULL DEFAULT '2-3 times a week',
    scoring_option_4 TEXT NOT NULL DEFAULT '4 or more times a week'
);

INSERT INTO AUDIT_C_Questions (question, scoring_option_0, scoring_option_1, scoring_option_2, scoring_option_3, scoring_option_4) VALUES
('How often do you have a drink containing alcohol?', 
 'Never', 'Monthly or less', '2-4 times a month', '2-3 times a week', '4 or more times a week'),
('How many standard drinks containing alcohol do you have on a typical day when you are drinking?', 
 '1 or 2', '3 or 4', '5 or 6', '7 to 9', '10 or more'),
('How often do you have six or more drinks on one occasion?', 
 'Never', 'Less than monthly', 'Monthly', 'Weekly', 'Daily or almost daily');
