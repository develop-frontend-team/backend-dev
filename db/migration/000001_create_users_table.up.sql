-- 新しいユーザーテーブルを作成する
CREATE TABLE users (
   id SERIAL PRIMARY KEY,
   username VARCHAR(50) NOT NULL,
   password VARCHAR(50) NOT NULL,
   email VARCHAR(100),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);