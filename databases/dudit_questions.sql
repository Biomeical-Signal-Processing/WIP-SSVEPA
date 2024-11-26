
CREATE TABLE DUDIT_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'Never',
    scoring_option_1 TEXT NOT NULL DEFAULT 'Once a month or less often',
    scoring_option_2 TEXT NOT NULL DEFAULT '2-4 times a month',
    scoring_option_3 TEXT NOT NULL DEFAULT '2-3 times a week',
    scoring_option_4 TEXT NOT NULL DEFAULT '4 times a week or more often'
);

INSERT INTO DUDIT_Questions (question) VALUES
('How often do you use drugs other than alcohol?'),
('Do you use more than one type of drug on the same occasion?'),
('How many times do you take drugs on a typical day when you use drugs?'),
('How often are you influenced by drugs in situations where it is physically hazardous (e.g., driving)?'),
('Have you or anyone else been injured (mentally or physically) because of your drug use?'),
('Has a relative, friend, doctor, or nurse been worried about your drug use or said to you that you should stop using drugs?');
