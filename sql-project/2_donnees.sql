-- Nettoyage pour repartir de zéro
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE payments; TRUNCATE TABLE enrollments; 
TRUNCATE TABLE courses; TRUNCATE TABLE users;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO users (nom, email) VALUES 
('Alice Martin', 'alice@email.com'), ('Bob Durand', 'bob@email.com'), 
('Charlie Leroi', 'charlie@email.com'), ('David Morel', 'david@email.com'),
('Eve Petit', 'eve@email.com'), ('Frank Garcia', 'frank@email.com'),
('Grace Lefebvre', 'grace@email.com'), ('Heidi Legrand', 'heidi@email.com'),
('Ivan Muller', 'ivan@email.com'), ('Julie Roux', 'julie@email.com');

INSERT INTO courses (titre, prix) VALUES 
('SQL Base', 29.99), ('Linux Admin', 45.00), ('Cyber Sec', 75.00), 
('Python Dev', 39.99), ('Cloud', 89.00), ('Reseau', 55.00);

INSERT INTO enrollments (user_id, course_id, progress) VALUES 
(1,1,100), (1,2,50), (2,1,20), (3,2,80), (4,3,10), (5,5,90), (6,1,100),
(6,5,25), (7,6,60), (8,3,30), (9,4,15), (10,2,100), (1,3,10), (2,3,5), (4,5,45);

INSERT INTO payments (user_id, amount) VALUES 
(1,29.99), (1,45.00), (2,29.99), (3,45.00), (4,75.00), (5,89.00), 
(6,29.99), (6,89.00), (7,55.00), (10,45.00);