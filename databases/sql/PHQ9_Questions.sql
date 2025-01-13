CREATE TABLE PHQ9_Questions (
    id INT IDENTITY(1,1) PRIMARY KEY,
    question NVARCHAR(MAX) NOT NULL,
    scoring_option_0 NVARCHAR(50) NOT NULL DEFAULT 'Not at all',
    scoring_option_1 NVARCHAR(50) NOT NULL DEFAULT 'Several days',
    scoring_option_2 NVARCHAR(50) NOT NULL DEFAULT 'More than half the days',
    scoring_option_3 NVARCHAR(50) NOT NULL DEFAULT 'Nearly every day'
);
GO

INSERT INTO PHQ9_Questions (question, scoring_option_0, scoring_option_1, scoring_option_2, scoring_option_3) VALUES
('Little interest or pleasure in doing things?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Feeling down, depressed, or hopeless?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Trouble falling or staying asleep, or sleeping too much?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Feeling tired or having little energy?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Poor appetite or overeating?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Feeling bad about yourself — or that you are a failure or have let yourself or your family down?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Trouble concentrating on things, such as reading the newspaper or watching television?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Thoughts that you would be better off dead, or thoughts of hurting yourself in some way?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day');
GO
