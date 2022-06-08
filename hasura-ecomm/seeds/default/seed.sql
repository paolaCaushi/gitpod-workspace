


INSERT INTO "public"."messages" ("id", "room_id", "user_id", "message","created_at")
-- Describe the dataset:
SELECT
CONCAT('m', "r") AS "id",
CONCAT('r', floor(random() * (10 - 1 + 1) + 1)) AS "room_id",
CONCAT('t', floor(random() * (10 - 1 + 1) + 1)) AS "user_id",
CONCAT('Message', "r") AS "message",
CURRENT_TIMESTAMP AS "created_at"
-- Set the size of the dataset:
FROM generate_series(1, 10) AS "r"
-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT messages_pkey
DO UPDATE SET
"room_id" = EXCLUDED."room_id",
"user_id" = EXCLUDED."user_id",
"message" = EXCLUDED."message"
-- Return the dataset that was produced:
RETURNING *

