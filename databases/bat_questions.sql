
CREATE TABLE BAT_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'Never',
    scoring_option_1 TEXT NOT NULL DEFAULT 'Rarely',
    scoring_option_2 TEXT NOT NULL DEFAULT 'Sometimes',
    scoring_option_3 TEXT NOT NULL DEFAULT 'Often',
    scoring_option_4 TEXT NOT NULL DEFAULT 'Always'
);

INSERT INTO BAT_Questions (question) VALUES
('At work, I feel mentally exhausted.'),
('At work, I feel physically exhausted.'),
('I feel emotionally drained by my work.'),
('I feel tired before I arrive at work.'),
('I doubt the significance of my work.'),
('I feel increasingly cynical about the outcomes of my work.'),
('I feel unable to contribute to the workplace effectively.'),
('I feel overwhelmed by work demands.'),
('I feel a growing sense of detachment from my job.'),
('I experience a lack of enthusiasm about my job.');
