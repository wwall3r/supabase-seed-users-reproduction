--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status) FROM stdin;
00000000-0000-0000-0000-000000000000	6b586a38-a22f-449a-86d2-7bac0a22bf71		authenticated	test@email.com	$2a$10$e.gUDhqNP34Jn0LLXvhcZuYcq8fmdXTA3A0K9DlNhYWpLwg0VSqKi	2022-10-15 13:42:41.431283+00	\N		\N		\N			\N	2022-10-15 13:53:35.547098+00	{"provider": "email", "providers": ["email"]}	{}	f	2022-10-15 13:42:41.427951+00	2022-10-15 13:42:41.427957+00	\N	\N			\N		0
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY auth.identities (id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at) FROM stdin;
6b586a38-a22f-449a-86d2-7bac0a22bf71	6b586a38-a22f-449a-86d2-7bac0a22bf71	{"sub": "6b586a38-a22f-449a-86d2-7bac0a22bf71"}	email	2022-10-15 13:42:41.429634+00	2022-10-15 13:42:41.429663+00	2022-10-15 13:42:41.429666+00
\.


--
-- PostgreSQL database dump complete
--

