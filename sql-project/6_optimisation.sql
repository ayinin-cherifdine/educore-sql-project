-- Création des index
CREATE INDEX idx_pay_date ON payments(paid_at);
CREATE INDEX idx_user_mail ON users(email);

-- Analyse
-- La recherche par mail est instantanée car la colonne est UNIQUE (index auto).
EXPLAIN SELECT * FROM users WHERE email = 'alice@email.com';