-- Top Cours (Marketing)
SELECT c.titre, COUNT(e.id) as inscrits FROM courses c 
LEFT JOIN enrollments e ON c.id = e.course_id GROUP BY c.id ORDER BY inscrits DESC;

-- Taux d'abandon (Pédagogie)
SELECT u.nom, c.titre FROM enrollments e JOIN users u ON e.user_id = u.id 
JOIN courses c ON e.course_id = c.id WHERE e.progress < 25;

-- Top Depense (Finance)
SELECT user_id, SUM(amount) as total FROM payments GROUP BY user_id 
HAVING total > (SELECT AVG(total) FROM (SELECT SUM(amount) as total FROM payments GROUP BY user_id) as sub);