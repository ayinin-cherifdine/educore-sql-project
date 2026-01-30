-- Comptage total
SELECT 'Users' as Table_Name, COUNT(*) FROM users
UNION SELECT 'Courses', COUNT(*) FROM courses;

-- Vérification des incohérences (Doit être vide)
SELECT * FROM enrollments WHERE progress < 0 OR progress > 100;

-- Détection des orphelins
SELECT e.* FROM enrollments e LEFT JOIN users u ON e.user_id = u.id WHERE u.id IS NULL;