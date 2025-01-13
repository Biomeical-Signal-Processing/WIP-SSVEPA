CREATE TABLE TSQ_Questions (
    id INT IDENTITY(1,1) PRIMARY KEY,
    question NVARCHAR(MAX) NOT NULL,
    scoring_option_0 NVARCHAR(10) NOT NULL DEFAULT 'No',
    scoring_option_1 NVARCHAR(10) NOT NULL DEFAULT 'Yes'
);
GO

INSERT INTO TSQ_Questions (question, scoring_option_0, scoring_option_1) VALUES
('Do you experience upsetting thoughts or memories about a traumatic event that you do not want to happen?', 'No', 'Yes'),
('Do you have nightmares about the traumatic event?', 'No', 'Yes'),
('Do you feel upset when reminded of the traumatic event?', 'No', 'Yes'),
('Do you try to avoid activities, places, or people that remind you of the traumatic event?', 'No', 'Yes'),
('Do you feel on edge or easily startled by unexpected noises or movements?', 'No', 'Yes'),
('Do you feel emotionally numb or detached from others?', 'No', 'Yes'),
('Do you have trouble sleeping due to the traumatic event?', 'No', 'Yes'),
('Do you have difficulty concentrating because of the traumatic event?', 'No', 'Yes'),
('Do you feel irritable or angry more than usual?', 'No', 'Yes'),
('Do you feel as though the traumatic event is happening again (flashbacks)?', 'No', 'Yes');
GO
