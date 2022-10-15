import { createClient } from '@supabase/supabase-js';

export const supabase =  createClient('http://localhost:54321', process.env.SUPABASE_ANON_KEY);

