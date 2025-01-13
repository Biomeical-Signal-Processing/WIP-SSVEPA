CREATE TABLE PDSS_Questions (
    id INT IDENTITY(1,1) PRIMARY KEY,
    question NVARCHAR(MAX) NOT NULL,
    scoring_option_0 NVARCHAR(50) NOT NULL DEFAULT 'None',
    scoring_option_1 NVARCHAR(50) NOT NULL DEFAULT 'Mild',
    scoring_option_2 NVARCHAR(50) NOT NULL DEFAULT 'Moderate',
    scoring_option_3 NVARCHAR(50) NOT NULL DEFAULT 'Severe',
    scoring_option_4 NVARCHAR(50) NOT NULL DEFAULT 'Extreme'
);
GO

INSERT INTO PDSS_Questions (question, scoring_option_0, scoring_option_1, scoring_option_2, scoring_option_3, scoring_option_4) VALUES
('How many panic attacks did you experience during the past week?', 'None', 'Mild', 'Moderate', 'Severe', 'Extreme'),
('How severe was the physical discomfort during your panic attacks this week?', 'None', 'Mild', 'Moderate', 'Severe', 'Extreme'),
('How severe was the fear you felt during your panic attacks this week?', 'None', 'Mild', 'Moderate', 'Severe', 'Extreme'),
('How worried were you about having another panic attack this week?', 'None', 'Mild', 'Moderate', 'Severe', 'Extreme'),
('How much did panic attacks interfere with your work this week?', 'None', 'Mild', 'Moderate', 'Severe', 'Extreme'),
('How much did panic attacks interfere with social activities this week?', 'None', 'Mild', 'Moderate', 'Severe', 'Extreme'),
('How much did panic attacks interfere with your home responsibilities this week?', 'None', 'Mild', 'Moderate', 'Severe', 'Extreme'),
('How much have you avoided situations or activities because they might trigger panic attacks this week?', 'None', 'Mild', 'Moderate', 'Severe', 'Extreme');
GO
