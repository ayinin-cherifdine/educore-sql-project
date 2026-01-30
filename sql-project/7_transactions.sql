START TRANSACTION;
INSERT INTO payments (user_id, amount) VALUES (1, 50.00);
SAVEPOINT p1;
-- Simulation erreur (prix négatif interdit)
-- INSERT INTO courses (titre, prix) VALUES ('Erreur', -1); 
ROLLBACK TO SAVEPOINT p1;
COMMIT;