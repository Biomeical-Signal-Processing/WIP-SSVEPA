
CREATE TABLE PDSS_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'None',
    scoring_option_1 TEXT NOT NULL DEFAULT 'Mild',
    scoring_option_2 TEXT NOT NULL DEFAULT 'Moderate',
    scoring_option_3 TEXT NOT NULL DEFAULT 'Severe',
    scoring_option_4 TEXT NOT NULL DEFAULT 'Extreme'
);

INSERT INTO PDSS_Questions (question) VALUES
('How many panic attacks did you experience during the past week?'),
('How severe was the physical discomfort during your panic attacks this week?'),
('How severe was the fear you felt during your panic attacks this week?'),
('How worried were you about having another panic attack this week?'),
('How much did panic attacks interfere with your work this week?'),
('How much did panic attacks interfere with social activities this week?'),
('How much did panic attacks interfere with your home responsibilities this week?'),
('How much have you avoided situations or activities because they might trigger panic attacks this week?');
