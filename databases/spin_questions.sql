
CREATE TABLE SPIN_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'Not at all',
    scoring_option_1 TEXT NOT NULL DEFAULT 'A little bit',
    scoring_option_2 TEXT NOT NULL DEFAULT 'Somewhat',
    scoring_option_3 TEXT NOT NULL DEFAULT 'Very much',
    scoring_option_4 TEXT NOT NULL DEFAULT 'Extremely'
);

INSERT INTO SPIN_Questions (question) VALUES
('I am afraid of people in authority.'),
('I am bothered by blushing in front of people.'),
('Parties and social events scare me.'),
('I avoid talking to people I do not know.'),
('Being criticized scares me a lot.'),
('I avoid doing things or speaking to people for fear of embarrassment.'),
('Sweating in front of people causes me distress.'),
('I avoid going to parties.'),
('I avoid activities in which I am the center of attention.'),
('Talking to strangers scares me.'),
('I avoid having to give speeches.'),
('I would do anything to avoid being criticized.'),
('Heart palpitations bother me when I am around people.'),
('I am afraid of doing things when people might be watching.'),
('Being embarrassed or looking stupid are among my worst fears.'),
('I avoid speaking to anyone in authority.'),
('Trembling or shaking in front of others is distressing to me.');
