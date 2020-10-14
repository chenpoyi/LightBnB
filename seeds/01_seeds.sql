/* USERS SEEDS*/
INSERT INTO users(name, email, password)
VALUES('Paul', 'paul@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Tiff', 'tiff@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Cody','cody@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties(owner_id,title,description,thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Speed lamp', 'description', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg',100, 2, 1, 3, 'Canada', '3rd Ave.', 'Vancouver', 'BC', 'ABC 123', true),
(2, 'Blank corner', 'description', 'https://images.pexels.com/photos/5332007/pexels-photo-5332007.jpeg', 'https://images.pexels.com/photos/5332007/pexels-photo-5332007.jpeg',200, 2, 5, 8, 'Canada', '2nd Ave.', 'Vancouver', 'BC', 'DEF 234', true),
(3, 'Habit mix', 'description', 'https://images.pexels.com/photos/4272369/pexels-photo-4272369.jpeg', 'https://images.pexels.com/photos/4272369/pexels-photo-4272369.jpeg' ,600, 2, 13, 7, 'Canada', '6th Ave.', 'Toronto', 'ON', 'GDS 125', true);

INSERT INTO reservations(start_date, end_date, property_id, guest_id)
VALUES('2018-09-11', '2018-09-26', 1, 2),
('2018-10-11', '2018-10-29', 2, 3),
('2020-09-02', '2020-09-13', 1, 3);

INSERT INTO property_reviews(guest_id, property_id, reservation_id, rating, message)
VALUES (2, 1, 1, 5, 'message'),
(3, 2, 2, 3, 'message'),
(3, 1, 3, 4, 'message');