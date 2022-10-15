#!/usr/bin/env node
import { supabase } from './db.js';
import { credentials } from './creds.js';

const { session, error } = await supabase.auth.signIn(credentials);

if (error) {
	console.error(error);
} else {
	console.log('Successfully logged in with session', session);
}
