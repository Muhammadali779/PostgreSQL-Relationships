
INSERT INTO users (username, birthdate) VALUES
('ali_1999', '1999-05-12'),
('dilshod_dev', '2001-11-03'),
('madina_art', '2000-02-28');


INSERT INTO profiles (name, bio, user_id) VALUES
('Ali Karimov', 'Web developer va freelanser.', 1),
('Dilshod Qodirov', 'Backend developer. Java va Python bilan ishlaydi.', 2),
('Madina Rashidova', 'Rassom va grafik dizayner.', 3);


INSERT INTO posts (content, user_id) VALUES
('Bugun yangi loyiha boshladim!', 1),
('PostgreSQL bo\`yicha qo\`llanma yozayapman.', 2),
('Yangi rasm chizdim, juda yoqdi!', 3),
('Backend bo\`yicha maslahatlar kerak bo\`lsa yozing.', 2);


INSERT INTO comments (content, user_id, post_id) VALUES
('Zo\`r! Omad!', 2, 1),
('Qiziqarli post ekan.', 3, 1),
('Kutayapmiz!', 1, 2),
('Tabriklayman!', 1, 3),
('Yaxshi fikrlar!', 3, 4);
