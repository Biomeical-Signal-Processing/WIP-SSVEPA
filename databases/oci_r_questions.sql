
CREATE TABLE OCI_R_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'Not at all',
    scoring_option_1 TEXT NOT NULL DEFAULT 'A little',
    scoring_option_2 TEXT NOT NULL DEFAULT 'Moderately',
    scoring_option_3 TEXT NOT NULL DEFAULT 'A lot',
    scoring_option_4 TEXT NOT NULL DEFAULT 'Extremely'
);

INSERT INTO OCI_R_Questions (question) VALUES
('I have saved up so many things that they get in the way.'),
('I check things more often than necessary.'),
('I get upset if objects are not arranged properly.'),
('I feel compelled to count while I am doing things.'),
('I find it difficult to touch an object when I know it has been touched by strangers or certain people.'),
('I find it difficult to control my own thoughts.'),
('I collect things I don’t need.'),
('I repeatedly check doors, windows, drawers, etc.'),
('I get upset if others change the way I have arranged things.'),
('I feel I have to repeat certain numbers.'),
('I sometimes have to wash or clean myself simply because I feel contaminated.'),
('I am upset by unpleasant thoughts that come into my mind against my will.'),
('I avoid throwing things away because I am afraid I might need them later.'),
('I repeatedly check gas and water taps and light switches after turning them off.'),
('I need things to be arranged in a particular order.'),
('I feel that there are good and bad numbers.'),
('I wash my hands more often and longer than necessary.'),
('I frequently get nasty thoughts and have difficulty in getting rid of them.');
