CREATE OR REPLACE VIEW v_active_users AS 
SELECT DISTINCT u.* FROM users u JOIN enrollments e ON u.id = e.user_id;

CREATE OR REPLACE VIEW v_popular_courses AS 
SELECT c.titre, COUNT(e.id) as nb FROM courses c 
LEFT JOIN enrollments e ON c.id = e.course_id GROUP BY c.id;