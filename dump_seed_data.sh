#!/usr/bin/env bash
set -e

docker run -it --rm \
  --net host \
	-v "$(pwd)":/workspace \
  -w /workspace \
  supabase/postgres:14.1.0 \
  pg_dump --data-only postgresql://postgres:postgres@localhost:54322 \
		--table auth.identities \
		--table auth.users \
	> seed.sql
