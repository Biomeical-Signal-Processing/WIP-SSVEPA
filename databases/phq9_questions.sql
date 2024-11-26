
CREATE TABLE PHQ9_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'Not at all',
    scoring_option_1 TEXT NOT NULL DEFAULT 'Several days',
    scoring_option_2 TEXT NOT NULL DEFAULT 'More than half the days',
    scoring_option_3 TEXT NOT NULL DEFAULT 'Nearly every day'
);

INSERT INTO PHQ9_Questions (question) VALUES
('Little interest or pleasure in doing things?'),
('Feeling down, depressed, or hopeless?'),
('Trouble falling or staying asleep, or sleeping too much?'),
('Feeling tired or having little energy?'),
('Poor appetite or overeating?'),
('Feeling bad about yourself — or that you are a failure or have let yourself or your family down?'),
('Trouble concentrating on things, such as reading the newspaper or watching television?'),
('Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual?'),
('Thoughts that you would be better off dead, or thoughts of hurting yourself in some way?');
