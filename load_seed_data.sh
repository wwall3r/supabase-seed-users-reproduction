#!/usr/bin/env bash
set -e

echo "Password should be 'postgres'"
echo

docker run -it --rm \
  --net host \
	-v "$(pwd)":/workspace \
  -w /workspace \
  supabase/postgres:14.1.0 \
  psql -h localhost -p 54322 --username postgres -f seed.sql
