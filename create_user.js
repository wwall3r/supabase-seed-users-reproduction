#!/usr/bin/env node

import { supabase } from './db.js';
import { credentials } from './creds.js';

const { user, error } = await supabase.auth.signUp(credentials);

if (error) {
	console.error(error);
} else {
	console.log('Successfully created user', user);
}
