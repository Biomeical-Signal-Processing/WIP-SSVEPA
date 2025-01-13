CREATE TABLE SPIN_Questions (
    id INT IDENTITY(1,1) PRIMARY KEY,
    question NVARCHAR(MAX) NOT NULL,
    scoring_option_0 NVARCHAR(50) NOT NULL DEFAULT 'Not at all',
    scoring_option_1 NVARCHAR(50) NOT NULL DEFAULT 'A little bit',
    scoring_option_2 NVARCHAR(50) NOT NULL DEFAULT 'Somewhat',
    scoring_option_3 NVARCHAR(50) NOT NULL DEFAULT 'Very much',
    scoring_option_4 NVARCHAR(50) NOT NULL DEFAULT 'Extremely'
);
GO

INSERT INTO SPIN_Questions (question, scoring_option_0, scoring_option_1, scoring_option_2, scoring_option_3, scoring_option_4) VALUES
('I am afraid of people in authority.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I am bothered by blushing in front of people.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('Parties and social events scare me.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I avoid talking to people I do not know.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('Being criticized scares me a lot.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I avoid doing things or speaking to people for fear of embarrassment.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('Sweating in front of people causes me distress.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I avoid going to parties.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I avoid activities in which I am the center of attention.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('Talking to strangers scares me.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I avoid having to give speeches.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I would do anything to avoid being criticized.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('Heart palpitations bother me when I am around people.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I am afraid of doing things when people might be watching.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('Being embarrassed or looking stupid are among my worst fears.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('I avoid speaking to anyone in authority.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely'),
('Trembling or shaking in front of others is distressing to me.', 'Not at all', 'A little bit', 'Somewhat', 'Very much', 'Extremely');
GO
