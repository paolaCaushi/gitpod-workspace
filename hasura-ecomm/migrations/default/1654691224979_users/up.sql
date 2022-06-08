CREATE TABLE IF NOT EXISTS "public"."users"(
	"id" TEXT unique not null,
	"name" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ default NOW() NOT NULL,
CONSTRAINT "user_pkey" PRIMARY KEY ("id")
)
