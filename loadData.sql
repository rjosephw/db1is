-- Load data into Users table
INSERT INTO project1.Users (user_id, first_name, last_name, year_of_birth, month_of_birth, day_of_birth, gender)
SELECT user_id, first_name, last_name, year_of_birth, month_of_birth, day_of_birth, gender
FROM public_user_information;


-- Load data into Friends table (adjust as needed for your dataset)
INSERT INTO project1.Friends (user1_id, user2_id)
SELECT DISTINCT user1_id, user2_id
FROM public_are_friends;

-- Load data into Cities table


INSERT INTO project1.Cities (city_id, city_name, state_name, country_name)
SELECT city_id, city_name, state_name, country_name
FROM public_city_information;

-- Load data into User_Current_Cities and User_Hometown_Cities tables


INSERT INTO project1.User_Current_Cities (user_id, current_city_id)
SELECT user_id, current_city_id
FROM public_user_current_cities;


-- Load data into User_Hometown_Cities table



INSERT INTO project1.User_Hometown_Cities (user_id, hometown_city_id)
SELECT user_id, hometown_city_id
FROM public_user_hometown_cities;

-- Load data into Messages table


INSERT INTO project1.Messages (message_id, sender_id, receiver_id, message_content, sent_time)
SELECT message_id, sender_id, receiver_id, message_content, sent_time
FROM public_message_information;


-- Load data into Programs table



INSERT INTO project1.Programs (program_id, institution, concentration, degree)
SELECT program_id, institution_name, program_concentration, program_degree
FROM public_programs_information;


-- Load data into Education table



INSERT INTO project1.Education (user_id, program_id, program_year)
SELECT user_id, program_id, program_year
FROM public_education_information;



-- Load data into User_Events table


INSERT INTO project1.User_Events (event_id, event_creator_id, event_name, event_tagline, event_description, event_host, 
                                  event_type, event_subtype, event_address, event_city_id, event_start_time, event_end_time)
SELECT event_id, event_creator_id, event_name, event_tagline, event_description, event_host, event_type, event_subtype,
       event_address, event_city, event_start_time, event_end_time
FROM public_event_information;



-- Load data into Participants table


INSERT INTO project1.Participants (event_id, user_id, confirmation)
SELECT event_id, user_id, confirmation
FROM public_participants_information;

-- Load data into Albums table



INSERT INTO project1.Albums (album_id, album_owner_id, album_name, album_created_time, album_modified_time, album_link,
                             album_visibility, cover_photo_id)
SELECT album_id, owner_id, album_name, album_created_time, album_modified_time, album_link, album_visibility, cover_photo_id
FROM public_album_information;


-- Load data into Photos table


INSERT INTO project1.Photos (photo_id, album_id, photo_caption, photo_created_time, photo_modified_time, photo_link)
SELECT photo_id, album_id, photo_caption, photo_created_time, photo_modified_time, photo_link
FROM public_photo_information;



-- Load data into Tags table


INSERT INTO project1.Tags (tag_photo_id, tag_subject_id, tag_created_time, tag_x, tag_y)
SELECT photo_id, tag_subject_id, tag_created_time, tag_x_coordinate, tag_y_coordinate
FROM public_tag_information;