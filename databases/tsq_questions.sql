
CREATE TABLE TSQ_Questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    scoring_option_0 TEXT NOT NULL DEFAULT 'No',
    scoring_option_1 TEXT NOT NULL DEFAULT 'Yes'
);

INSERT INTO TSQ_Questions (question) VALUES
('Do you experience upsetting thoughts or memories about a traumatic event that you do not want to happen?'),
('Do you have nightmares about the traumatic event?'),
('Do you feel upset when reminded of the traumatic event?'),
('Do you try to avoid activities, places, or people that remind you of the traumatic event?'),
('Do you feel on edge or easily startled by unexpected noises or movements?'),
('Do you feel emotionally numb or detached from others?'),
('Do you have trouble sleeping due to the traumatic event?'),
('Do you have difficulty concentrating because of the traumatic event?'),
('Do you feel irritable or angry more than usual?'),
('Do you feel as though the traumatic event is happening again (flashbacks)?');
