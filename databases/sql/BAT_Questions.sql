CREATE TABLE BAT_Questions (
    id INT IDENTITY(1,1) PRIMARY KEY,
    question NVARCHAR(MAX) NOT NULL,
    scoring_option_0 NVARCHAR(50) NOT NULL DEFAULT 'Never',
    scoring_option_1 NVARCHAR(50) NOT NULL DEFAULT 'Rarely',
    scoring_option_2 NVARCHAR(50) NOT NULL DEFAULT 'Sometimes',
    scoring_option_3 NVARCHAR(50) NOT NULL DEFAULT 'Often',
    scoring_option_4 NVARCHAR(50) NOT NULL DEFAULT 'Always'
);
GO

INSERT INTO BAT_Questions (question, scoring_option_0, scoring_option_1, scoring_option_2, scoring_option_3, scoring_option_4) VALUES
('At work, I feel mentally exhausted.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('At work, I feel physically exhausted.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('I feel emotionally drained by my work.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('I feel tired before I arrive at work.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('I doubt the significance of my work.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('I feel increasingly cynical about the outcomes of my work.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('I feel unable to contribute to the workplace effectively.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('I feel overwhelmed by work demands.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('I feel a growing sense of detachment from my job.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always'),
('I experience a lack of enthusiasm about my job.', 'Never', 'Rarely', 'Sometimes', 'Often', 'Always');
GO
