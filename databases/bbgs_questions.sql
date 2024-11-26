
CREATE TABLE BBGS_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'No',
    scoring_option_1 TEXT NOT NULL DEFAULT 'Yes'
);

INSERT INTO BBGS_Questions (question) VALUES
('During the past 12 months, have you become restless, irritable, or anxious when trying to stop/cut down on gambling?'),
('During the past 12 months, have you tried to keep your family or friends from knowing how much you gambled?'),
('During the past 12 months, did you have such financial trouble as a result of your gambling that you had to get help with living expenses from family, friends, or welfare?');
