This repo reproduces an issue with seed data containing users in supabase.


Steps to reproduce:

1. Install supabase 0.17.0 from https://github.com/supabase/cli/releases
1. cd to this repo
1. `git checkout 31b53b25dd` (for the version compatible with that supabase cli version)
1. `supabase start`
1. Note that `seed.sql` was created with `./create_user.js` and `./dump_seed_data.sh`, but you do not need to recreate that here
1. `./load_seed_data.sh`
1. `./login.js` should succeed and show the session
1. `supabase stop`
1. Install supabase 1.8.4 from https://github.com/supabase/cli/releases
1. `git checkout main` in this repo
1. `supabase start`
1. `./load_seed_data.sh`
1. `./login.js` fails with "invalid login credentials"

Note that at this point, changing `creds.js` to have a new email and running `./create_user.js` and `./login.js` will succeed.
What I expect is happening is that the auth schema has database migrations, but those migrations are not run with data in the tables.
