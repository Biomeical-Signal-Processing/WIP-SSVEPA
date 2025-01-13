CREATE TABLE OCI_R_Questions (
    id INT IDENTITY(1,1) PRIMARY KEY,
    question NVARCHAR(MAX) NOT NULL,
    scoring_option_0 NVARCHAR(50) NOT NULL DEFAULT 'Not at all',
    scoring_option_1 NVARCHAR(50) NOT NULL DEFAULT 'A little',
    scoring_option_2 NVARCHAR(50) NOT NULL DEFAULT 'Moderately',
    scoring_option_3 NVARCHAR(50) NOT NULL DEFAULT 'A lot',
    scoring_option_4 NVARCHAR(50) NOT NULL DEFAULT 'Extremely'
);
GO

INSERT INTO OCI_R_Questions (question, scoring_option_0, scoring_option_1, scoring_option_2, scoring_option_3, scoring_option_4) VALUES
('I have saved up so many things that they get in the way.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I check things more often than necessary.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I get upset if objects are not arranged properly.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I feel compelled to count while I am doing things.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I find it difficult to touch an object when I know it has been touched by strangers or certain people.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I find it difficult to control my own thoughts.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I collect things I don’t need.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I repeatedly check doors, windows, drawers, etc.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I get upset if others change the way I have arranged things.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I feel I have to repeat certain numbers.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I sometimes have to wash or clean myself simply because I feel contaminated.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I am upset by unpleasant thoughts that come into my mind against my will.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I avoid throwing things away because I am afraid I might need them later.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I repeatedly check gas and water taps and light switches after turning them off.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I need things to be arranged in a particular order.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I feel that there are good and bad numbers.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I wash my hands more often and longer than necessary.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely'),
('I frequently get nasty thoughts and have difficulty in getting rid of them.', 'Not at all', 'A little', 'Moderately', 'A lot', 'Extremely');
GO
