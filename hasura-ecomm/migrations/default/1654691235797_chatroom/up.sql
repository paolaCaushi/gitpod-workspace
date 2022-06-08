CREATE TABLE IF NOT EXISTS "public"."chatroom" (

  "id" TEXT,

  "user_id" TEXT NOT NULL,
  "name" TEXT not NULL

  CONSTRAINT "chatroom_pkey" PRIMARY KEY ("id"),

  CONSTRAINT "chatroom_id_fkey"FOREIGN KEY (user_id) REFERENCES "public".users(id)

);
