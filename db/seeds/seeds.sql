INSERT INTO achievements (name, image_URL, description, xp, amount_to_complete)
VALUES  ('100 planks', 'imageurl', 'This achievement is given to those who managed to plank for 2 minutes straight.', 100, 100),
        ('100 jumping jacks', 'imageurl', 'This achievement is given to those who complete a total of 1000 jumping jacks.', 100, 100),
        ('50 squats', 'imageurl', 'This achievement is given to those who complete a total of 50 squats.', 100, 50),
        ('100 push ups', 'imageurl', 'This achievement is given to those who complete a total of 100 push ups.', 100, 100),
        ('100 stretch session', 'imageurl', 'This achievement is given to those who complete a 12 minutes of stretches.', 100, 100),
        ('100 sit ups', 'imageurl', 'This achievement is given to those who complete 100 sit ups.', 100, 100),
        ('tree pose', 'imageurl', 'This achievement is given to those who complete a tree pose for a total of 10 minutes.', 100, 6),
        ('chair pose', 'imageurl', 'This achievement is given to those who complete a chair pose for a total of 10 minutes.', 100, 50),
        ('drink 6 cups of water', 'imageurl', 'This achievement is given to those who complete drinking 8 cups of water.', 100, 6),
        ('1 hour stillness', 'imageurl', 'This achievement is given to those who complete stillness task for a total of 1 hour.', 100, 3),
        ('eat a meal', 'imageurl', 'This achievement is given to those who ate 3 meals a day.', 100, 100),
        ('wash dishes', 'imageurl', 'This achievement is given to those who completed 3 dish washing sessions.', 100, 100),
        ('100 dips', 'imageurl', 'This achievement is given to those who completed 100 dips.', 100, 100),
        ('meal preps', 'imageurl', 'This achievement is given to those who completed prepared meals 2 times.', 100, 100),
        ('run 100 times', 'imageurl', 'This achievement is given to those who completed 15 minutes of running in place.', 100, 100),
        ('100 neck stretches', 'imageurl', 'This achievement is given to those who completed 15 minutes of neck stretches.', 100, 100);

INSERT INTO levels (xp)
VALUES  (100),
        (200),
        (300),
        (400),
        (500),
        (600),
        (700),
        (800),
        (900),
        (1000),
        (1100),
        (1200),
        (1300),
        (1400),
        (1500),
        (1600),
        (1700),
        (1800),
        (1900),
        (2000),
        (2100),
        (2200),
        (2300),
        (2400),
        (2500),
        (2600),
        (2700),
        (2800),
        (2900),
        (3000),
        (3100),
        (3200),
        (3300),
        (3400),
        (3500),
        (3600),
        (3700),
        (3800),
        (3900),
        (4000),
        (4100),
        (4200),
        (4300),
        (4400),
        (4500),
        (4600),
        (4700),
        (4800),
        (4900),
        (5000);

INSERT INTO tasks (name, amount_to_complete, type, xp, description)
VALUES  ('plank', 5, 'main', 50, 'An exercise training the bodys core.'),
        ('jumping jacks', 5, 'main', 50, 'An exercise training the heart, lungs, and muscles at the same time'),
        ('squats', 5, 'main', 50, 'A strength exercise in which the trainee lowers their hips from a standing position and then stands back up.'),
        ('push ups', 5, 'main', 50, 'A common calisthenics exercise beginning from the prone position, and raising and lowering the body using the arms.'),
        ('stretches', 5, 'main', 50, 'Stretching keeps the muscles flexible, strong, and healthy, and we need that flexibility to maintain a range of motion in the joints.'),
        ('sit ups', 5, 'main', 50, 'Sit ups are an excellent core muscle exercise that target your abdominal muscles, hip flexors, and lower back.'),
        ('tree pose', 5, 'main', 50, 'Stretches the thighs, groins, torso, and shoulders, and builds strength in the ankles and calves, and tones the abdominal muscles.'),
        ('chair pose', 5, 'main', 50, 'strengthens hip flexors, ankles, calves, and back, and stretches chest and shoulders.'),
        ('drink water', 3, 'side', 25, 'You should hydrate.'),
        ('stillness', 3, 'side', 25, 'Stillness is a conscious choice to set aside a period of time and let the body, mind and soul rest.'),
        ('eat', 3, 'side', 25, 'You should eat.'),
        ('wash dishes', 3, 'side', 25, 'Clean up after yourself!'),
        ('dips', 3, 'side', 25, 'Work out the arms, shoulders, back, and core.'),
        ('meal prep', 3, 'side', 25, 'Meal prep for the week.'),
        ('running in place', 3, 'side', 25, 'Running in place.'),
        ('stretch neck', 3, 'side', 25, 'Stretch your neck.');

INSERT INTO users (name, password, email, username, date_created, xp, level) 
VALUES  ('Test','test123','test@email.com', 'TEST123', '2020-08-03', 0, 1),
        ('Kevin','123456','kkim@email.com', 'KVNKM', '2020-08-02', 400, 5),
        ('Victor','vliang','vliang@email.com', 'VLIANG', '2020-08-02', 2500, 30),
        ('OPUSER','OPUSER123','op@email.com', 'OPUSER', '2020-08-02', 4000, 49);

INSERT INTO user_achievs (user_id, achiev_id, progress, times_completed) 
VALUES  (1, 1, 75, 1),
        (1, 2, 0, 2),
        (1, 3, 33, 1),
        (1, 4, 0, 2),
        (1, 5, 40, 1),
        (1, 6, 0, 2),
        (1, 7, 0, 1),
        (1, 8, 90, 2),
        (1, 9, 88, 1),
        (1, 10, 75, 2),
        (1, 11, 0, 1),
        (1, 12, 33, 2),
        (1, 13, 0, 1),
        (1, 14, 40, 2),
        (1, 15, 60, 1),
        (1, 16, 25, 2),

        (2, 1, 100, 100),
        (2, 2, 75, 75),
        (2, 3, 0, 0),
        (2, 4, 100, 100),
        (2, 5, 12, 12),
        (2, 6, 100, 100),
        (2, 7, 0, 5),
        (2, 8, 25, 25),
        
        (2, 9, 100, 100),
        (2, 10, 88, 88),
        (2, 11, 100, 100),
        (2, 12, 0, 0),
        (2, 13, 100, 100),
        (2, 14, 40, 40),
        (2, 15, 60, 60),
        (2, 16, 100, 100),

        (3, 1, 75, 1),
        (3, 2, 100, 2),
        (3, 3, 75, 1),
        (3, 4, 100, 2),
        (3, 5, 75, 1),
        (3, 6, 100, 2),
        (3, 7, 75, 1),
        (3, 8, 100, 2),
        (3, 9, 75, 2),
        (3, 10, 100, 2),
        (3, 11, 75, 1),
        (3, 12, 100, 2),
        (3, 13, 75, 1),
        (3, 14, 100, 2),
        (3, 15, 75, 1),
        (3, 16, 100, 2),

        (4, 1, 100, 100),
        (4, 2, 100, 100),
        (4, 3, 100, 50),
        (4, 4, 100, 100),
        (4, 5, 100, 100),
        (4, 6, 100, 100),
        (4, 7, 100, 6),
        (4, 8, 100, 50),
        (4, 9, 50, 6),
        (4, 10,100, 3),
        (4, 11, 100, 100),
        (4, 12, 100, 100),
        (4, 13, 100, 100),
        (4, 14, 100, 100),
        (4, 15, 100, 100),
        (4, 16, 100, 100);

INSERT INTO user_task (user_id, task_id, progress, times_completed, achievs_id) 
VALUES  (1, 1, 75, 1, 1),
        (1, 2, 56, 2, 2),
        (1, 3, 0, 1, 3),
        (1, 4, 0, 2, 4),
        (1, 5, 0, 1, 5),
        (1, 6, 60, 2, 6),
        (1, 7, 0, 1, 7),
        (1, 8, 90, 2, 8),
        (1, 9, 88, 1, 9),
        (1, 10, 75, 2, 10),
        (1, 11, 56, 1, 11),
        (1, 12, 0, 2, 12),
        (1, 13, 0, 1, 13),
        (1, 14, 0, 2, 14),
        (1, 15, 60, 1, 15),
        (1, 16, 25, 2, 16),

        (2, 1, 0, 5, 1),
        (2, 2, 75, 4, 2),
        (2, 3, 56, 3, 3),
        (2, 4, 33, 2, 4),
        (2, 5, 0, 1, 5),
        (2, 6, 40, 2, 6),
        (2, 7, 60, 3, 7),
        (2, 8, 0, 4, 8),

        (2, 9, 90, 5, 9),
        (2, 10, 88, 4, 10),
        (2, 11, 56, 3, 11),
        (2, 12, 33, 2, 12),
        (2, 13, 0, 1, 13),
        (2, 14, 40, 2, 14),
        (2, 15, 60, 3, 15),
        (2, 16, 0, 4, 16),
        
        (3, 1, 18, 2, 1),
        (3, 2, 90, 1, 2),
        (3, 3, 75, 1, 3),
        (3, 4, 56, 2, 4),
        (3, 5, 33, 1, 5),
        (3, 6, 12, 2, 6),
        (3, 7, 40, 1, 7),
        (3, 8, 60, 2, 8),
        (3, 9, 25, 1, 9),
        (3, 10, 0, 2, 10),
        (3, 11, 56, 1, 11),
        (3, 12, 33, 2, 12),
        (3, 13, 12, 1, 13),
        (3, 14, 40, 2, 14),
        (3, 15, 60, 1, 15),
        (3, 16, 25, 2, 16),

        (4, 1, 50, 5, 1),
        (4, 2, 50, 5, 2),
        (4, 3, 0, 5, 3),
        (4, 4, 50, 5, 4),
        (4, 5, 100, 5, 5),
        (4, 6, 0, 5, 6),
        (4, 7, 0, 5, 7),
        (4, 8, 100, 5, 8),
        (4, 9, 75, 3, 9),
        (4, 10, 0, 3, 10),
        (4, 11, 50, 3, 11),
        (4, 12, 50, 3, 12),
        (4, 13, 100, 3, 13),
        (4, 14, 50, 3, 14),
        (4, 15, 0, 3, 15),
        (4, 16, 100, 3, 16);