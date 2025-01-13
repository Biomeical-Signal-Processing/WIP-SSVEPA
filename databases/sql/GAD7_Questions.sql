CREATE TABLE GAD7_Questions (
    id INT IDENTITY(1,1) PRIMARY KEY,
    question NVARCHAR(MAX) NOT NULL,
    scoring_option_0 NVARCHAR(50) NOT NULL DEFAULT 'Not at all',
    scoring_option_1 NVARCHAR(50) NOT NULL DEFAULT 'Several days',
    scoring_option_2 NVARCHAR(50) NOT NULL DEFAULT 'More than half the days',
    scoring_option_3 NVARCHAR(50) NOT NULL DEFAULT 'Nearly every day'
);
GO

INSERT INTO GAD7_Questions (question, scoring_option_0, scoring_option_1, scoring_option_2, scoring_option_3) VALUES
('Feeling nervous, anxious, or on edge?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Not being able to stop or control worrying?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Worrying too much about different things?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Trouble relaxing?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Being so restless that it’s hard to sit still?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Becoming easily annoyed or irritable?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day'),
('Feeling afraid as if something awful might happen?', 'Not at all', 'Several days', 'More than half the days', 'Nearly every day');
GO
