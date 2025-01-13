CREATE TABLE BBGS_Questions (
    id INT IDENTITY(1,1) PRIMARY KEY,
    question NVARCHAR(MAX) NOT NULL,
    scoring_option_0 NVARCHAR(10) NOT NULL DEFAULT 'No',
    scoring_option_1 NVARCHAR(10) NOT NULL DEFAULT 'Yes'
);
GO

INSERT INTO BBGS_Questions (question, scoring_option_0, scoring_option_1) VALUES
('During the past 12 months, have you become restless, irritable, or anxious when trying to stop/cut down on gambling?', 'No', 'Yes'),
('During the past 12 months, have you tried to keep your family or friends from knowing how much you gambled?', 'No', 'Yes'),
('During the past 12 months, did you have such financial trouble as a result of your gambling that you had to get help with living expenses from family, friends, or welfare?', 'No', 'Yes');
GO
