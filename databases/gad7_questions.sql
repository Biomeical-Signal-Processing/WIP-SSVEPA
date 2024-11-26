
CREATE TABLE GAD7_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'Not at all',
    scoring_option_1 TEXT NOT NULL DEFAULT 'Several days',
    scoring_option_2 TEXT NOT NULL DEFAULT 'More than half the days',
    scoring_option_3 TEXT NOT NULL DEFAULT 'Nearly every day'
);

INSERT INTO GAD7_Questions (question) VALUES
('Feeling nervous, anxious, or on edge?'),
('Not being able to stop or control worrying?'),
('Worrying too much about different things?'),
('Trouble relaxing?'),
('Being so restless that it’s hard to sit still?'),
('Becoming easily annoyed or irritable?'),
('Feeling afraid as if something awful might happen?');
