-- Create View_User_Information
CREATE VIEW View_User_Information AS
SELECT * FROM project1.Users;

-- Create View_Are_Friends
CREATE VIEW View_Are_Friends AS
SELECT LEAST(user1_id, user2_id) AS user1_id, GREATEST(user1_id, user2_id) AS user2_id
FROM project1.Friends;

-- Create View_Photo_Information
CREATE VIEW View_Photo_Information AS
SELECT * FROM project1.Photos;

-- Create View_Event_Information
CREATE VIEW View_Event_Information AS
SELECT * FROM project1.User_Events;

-- Create View_Tag_Information
CREATE VIEW View_Tag_Information AS
SELECT * FROM project1.Tags;
