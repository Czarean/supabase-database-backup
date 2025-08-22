SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	b7fab80a-24a3-448f-a7d1-d325fe4584d4	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@noemail.com","user_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","user_phone":""}}	2025-01-26 00:47:40.697594+00	
00000000-0000-0000-0000-000000000000	ada85f20-4b58-4200-8b21-d4d8fa0e0830	{"action":"login","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 00:48:03.414731+00	
00000000-0000-0000-0000-000000000000	e435ec4f-e07d-4a5d-9fd1-40ef47ffb67d	{"action":"login","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 00:50:16.770521+00	
00000000-0000-0000-0000-000000000000	8904149d-1f69-4058-a01c-bdc42ab761d4	{"action":"login","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 01:13:30.449371+00	
00000000-0000-0000-0000-000000000000	deb9de7d-0012-41b2-a56e-3f2b19734b98	{"action":"token_refreshed","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 18:31:03.315861+00	
00000000-0000-0000-0000-000000000000	fa53bac1-7c27-4608-aa95-527541c79d33	{"action":"token_revoked","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 18:31:03.326513+00	
00000000-0000-0000-0000-000000000000	69588706-58bb-4967-b0c1-e58e363264c3	{"action":"logout","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 18:44:19.386244+00	
00000000-0000-0000-0000-000000000000	d9f77b53-161e-47fe-9a29-4de094cf406b	{"action":"login","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 18:45:58.327823+00	
00000000-0000-0000-0000-000000000000	0b251f4d-5d80-4395-81b0-7c623852e198	{"action":"logout","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 18:46:48.855495+00	
00000000-0000-0000-0000-000000000000	0be26438-b561-4a0f-a45b-036637c3342d	{"action":"login","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 18:46:59.704356+00	
00000000-0000-0000-0000-000000000000	79ec3eaa-de99-402a-9c50-1e2c5076d1aa	{"action":"logout","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 18:47:33.205163+00	
00000000-0000-0000-0000-000000000000	8a9cad9a-60d8-425d-8e94-85f765e97f8c	{"action":"login","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 18:52:18.989491+00	
00000000-0000-0000-0000-000000000000	6d93277c-5476-482e-b155-cc9428d5c4ce	{"action":"logout","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 18:53:53.171695+00	
00000000-0000-0000-0000-000000000000	951330af-114c-4409-addf-dcd27baab228	{"action":"login","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 18:54:34.556898+00	
00000000-0000-0000-0000-000000000000	4824d0c2-16ae-4018-8980-4b9a86aa9976	{"action":"token_refreshed","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 20:19:38.170855+00	
00000000-0000-0000-0000-000000000000	7393e6ad-d14c-4366-88d2-e813cff668b0	{"action":"token_revoked","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 20:19:38.17234+00	
00000000-0000-0000-0000-000000000000	d5320049-bbbe-4a53-9b4c-e33906277982	{"action":"logout","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 20:40:29.46204+00	
00000000-0000-0000-0000-000000000000	18f832fd-1208-4c24-9067-6c3db7a17dc7	{"action":"login","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 20:45:32.93626+00	
00000000-0000-0000-0000-000000000000	f170c786-45cc-48e9-8d2f-ea7fe1dad53c	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"admin@mail.com","user_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","user_phone":""}}	2025-01-26 21:07:57.358685+00	
00000000-0000-0000-0000-000000000000	def8c1f4-8f52-4a7b-8376-bb14ab829bc0	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"write@mail.com","user_id":"6c20b7bb-b94b-4121-9f71-f6ff03ce20b3","user_phone":""}}	2025-01-26 21:08:27.996879+00	
00000000-0000-0000-0000-000000000000	5c27ab35-2028-4f8d-b8cd-667bb6594a0b	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"view@mail.com","user_id":"25c6100d-4c4a-4c70-a4fa-d71e8cc4a062","user_phone":""}}	2025-01-26 21:08:43.574579+00	
00000000-0000-0000-0000-000000000000	06e8bb1d-27a5-4b08-b5bc-7a7712a21daa	{"action":"logout","actor_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","actor_username":"test@noemail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 21:13:22.593184+00	
00000000-0000-0000-0000-000000000000	1be49bf4-1a52-410a-9ab3-c5d9743f1f7d	{"action":"login","actor_id":"6c20b7bb-b94b-4121-9f71-f6ff03ce20b3","actor_username":"write@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 21:13:32.84896+00	
00000000-0000-0000-0000-000000000000	06677210-f6f2-4fa8-aded-7b8b37e41cf7	{"action":"logout","actor_id":"6c20b7bb-b94b-4121-9f71-f6ff03ce20b3","actor_username":"write@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 21:15:59.33876+00	
00000000-0000-0000-0000-000000000000	4a059be8-0246-4b21-90c2-5b4d55f42dc7	{"action":"login","actor_id":"25c6100d-4c4a-4c70-a4fa-d71e8cc4a062","actor_username":"view@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 21:16:08.715275+00	
00000000-0000-0000-0000-000000000000	b081f117-0397-4873-9c1f-992915eafb90	{"action":"logout","actor_id":"25c6100d-4c4a-4c70-a4fa-d71e8cc4a062","actor_username":"view@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 21:16:45.290845+00	
00000000-0000-0000-0000-000000000000	b663f021-e865-46ab-8a82-052bf6170853	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 21:17:03.677168+00	
00000000-0000-0000-0000-000000000000	da56e3d0-17d7-49e0-9504-5b962b62d0f9	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@noemail.com","user_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","user_phone":""}}	2025-01-26 22:00:56.621088+00	
00000000-0000-0000-0000-000000000000	4d87f4bf-08f2-488a-b8b3-4fc8aad8da46	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"nV2P2BMEoqJ0B9NlENgfex-wrpc2be7pfdLuuDMob0k","user_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","user_phone":"llJW33syQ4WITAs"}}	2025-01-26 22:03:03.896089+00	
00000000-0000-0000-0000-000000000000	e3aff74f-4de2-40f4-a569-647598d0a812	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"nV2P2BMEoqJ0B9NlENgfex-wrpc2be7pfdLuuDMob0k","user_id":"3dcac43d-91da-41cc-8f89-32fb8fba786e","user_phone":"llJW33syQ4WITAs"}}	2025-01-26 22:05:49.053791+00	
00000000-0000-0000-0000-000000000000	83adf97f-c025-417f-9e8c-be1ebd6f84df	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"view@mail.com","user_id":"25c6100d-4c4a-4c70-a4fa-d71e8cc4a062","user_phone":""}}	2025-01-26 22:10:27.108988+00	
00000000-0000-0000-0000-000000000000	583d0e86-594a-4ff8-b595-aade66fa76fd	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"xqE3t5ij1aKFDtL6TexGXnjt-W4bSy-z4AX68C2xlsM","user_id":"25c6100d-4c4a-4c70-a4fa-d71e8cc4a062","user_phone":"IdFL6Ys2BSU50fV"}}	2025-01-26 22:10:35.033027+00	
00000000-0000-0000-0000-000000000000	5b7a2c72-039b-40ee-9cd7-0b52713adfb0	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 22:10:49.136168+00	
00000000-0000-0000-0000-000000000000	4ee4ea2e-349e-45c5-9906-dcf53ea6e3aa	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 22:11:00.571133+00	
00000000-0000-0000-0000-000000000000	d638fb0f-1cf1-45f0-87bc-e9584b3a817a	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@noemail.com","user_id":"ca328d0e-ad1d-4d93-bc3e-14109383763b","user_phone":""}}	2025-01-26 22:11:28.714311+00	
00000000-0000-0000-0000-000000000000	2a6aeb9e-f7ba-4dc8-ae34-772e90dcade9	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@mailmail.com","user_id":"d9ff2cfb-00a7-414b-bf2a-5cfd7757f579","user_phone":""}}	2025-01-26 22:12:06.991201+00	
00000000-0000-0000-0000-000000000000	0dc212a4-acd2-4f10-8c5f-a3b1b9082e54	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@testtest.com","user_id":"4528a4cd-f10f-4972-8289-5718c0af3518","user_phone":""}}	2025-01-26 22:13:11.927766+00	
00000000-0000-0000-0000-000000000000	1a0608a6-be01-4cc4-976c-3b77f7a3c5e6	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@test.com","user_id":"a227bcc9-2721-437e-bf20-9bc106ca4be5","user_phone":""}}	2025-01-26 22:16:53.671431+00	
00000000-0000-0000-0000-000000000000	7464b7e3-f05e-4c2a-88e5-eb7867af95e2	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"testtest@test.com","user_id":"fa63f44f-ae07-4c8d-a8b2-327c0e866191","user_phone":""}}	2025-01-26 22:19:08.486132+00	
00000000-0000-0000-0000-000000000000	248ea2e7-b05e-41ae-b632-e55573138771	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 22:19:27.994957+00	
00000000-0000-0000-0000-000000000000	b9df4ede-a67d-432c-8ec0-6120eb0097c8	{"action":"login","actor_id":"fa63f44f-ae07-4c8d-a8b2-327c0e866191","actor_username":"testtest@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 22:19:33.070815+00	
00000000-0000-0000-0000-000000000000	04e51fe4-0054-4f4c-a10c-170faca89cda	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"writewrite@write.com","user_id":"292beba8-ac91-40f8-beb8-e7cc95775df1","user_phone":""}}	2025-01-26 22:19:55.470301+00	
00000000-0000-0000-0000-000000000000	68d9b712-9be9-483f-b463-b17110717d29	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"viewview@view.com","user_id":"99e4176a-9661-4958-bbe6-913e57393eea","user_phone":""}}	2025-01-26 22:20:17.227833+00	
00000000-0000-0000-0000-000000000000	5c7ae0d3-96b3-40d9-ba36-2bbd6c8cf12b	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 00:33:16.052217+00	
00000000-0000-0000-0000-000000000000	aa108fb8-2964-4c15-8dca-b897f81ee464	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"viewview@view.com","user_id":"99e4176a-9661-4958-bbe6-913e57393eea","user_phone":""}}	2025-01-26 22:24:04.758621+00	
00000000-0000-0000-0000-000000000000	ce746380-feb4-4851-8a27-f83598eb343c	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"writewrite@write.com","user_id":"292beba8-ac91-40f8-beb8-e7cc95775df1","user_phone":""}}	2025-01-26 22:24:09.319875+00	
00000000-0000-0000-0000-000000000000	4203df2d-f47e-4519-bffa-cf4cc1986265	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"xqE3t5ij1aKFDtL6TexGXnjt-W4bSy-z4AX68C2xlsM","user_id":"25c6100d-4c4a-4c70-a4fa-d71e8cc4a062","user_phone":"IdFL6Ys2BSU50fV"}}	2025-01-26 22:24:16.486467+00	
00000000-0000-0000-0000-000000000000	adb22a6c-30ab-4ca3-8d0e-cfdfaa1da976	{"action":"logout","actor_id":"fa63f44f-ae07-4c8d-a8b2-327c0e866191","actor_username":"testtest@test.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 22:31:38.980672+00	
00000000-0000-0000-0000-000000000000	453fc5c1-e880-48ab-b7e9-76056a9eb31f	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 22:31:41.590215+00	
00000000-0000-0000-0000-000000000000	61c48f0d-b8e6-47bc-ae88-e345ada6222b	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 23:13:23.86876+00	
00000000-0000-0000-0000-000000000000	05e6cf8c-e162-40e9-96e1-f7caf2acc3bc	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 23:17:08.728559+00	
00000000-0000-0000-0000-000000000000	9442b86a-744c-48e6-8e8f-432a329c4654	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 23:20:10.651059+00	
00000000-0000-0000-0000-000000000000	187ddae7-90af-4320-951e-c5d8438ef268	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 23:21:15.788063+00	
00000000-0000-0000-0000-000000000000	fc37fc83-ffb2-4ceb-b183-e85151e79fc0	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 23:28:10.945995+00	
00000000-0000-0000-0000-000000000000	5ef600ae-22c6-4b73-8d25-b68215d6a1d9	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 23:29:36.873569+00	
00000000-0000-0000-0000-000000000000	111bf686-e8d2-4ff8-bce5-4f45660ca700	{"action":"user_signedup","actor_id":"31428e86-8fee-4395-8b7e-4a6f1effa244","actor_username":"write@mail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-01-26 23:40:59.98311+00	
00000000-0000-0000-0000-000000000000	d027951f-dc47-4381-9f3d-82510519dfdb	{"action":"login","actor_id":"31428e86-8fee-4395-8b7e-4a6f1effa244","actor_username":"write@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 23:40:59.987833+00	
00000000-0000-0000-0000-000000000000	dde4c484-c1ec-4a42-b5b7-dae410509699	{"action":"logout","actor_id":"31428e86-8fee-4395-8b7e-4a6f1effa244","actor_username":"write@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-26 23:53:07.846741+00	
00000000-0000-0000-0000-000000000000	795cf944-6858-4e67-9202-62d5d265fa54	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 23:53:55.791131+00	
00000000-0000-0000-0000-000000000000	f24b2eb4-fbae-4543-bf77-488d12431080	{"action":"user_repeated_signup","actor_id":"31428e86-8fee-4395-8b7e-4a6f1effa244","actor_username":"write@mail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-01-26 23:57:56.844518+00	
00000000-0000-0000-0000-000000000000	7f22a4a0-793f-484c-bf56-faf95488cf21	{"action":"user_signedup","actor_id":"010c5300-c376-4b6a-a339-54a68c8941a7","actor_username":"writewrite@mail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-01-27 00:02:25.184397+00	
00000000-0000-0000-0000-000000000000	9b24b131-2dcd-4368-893d-e18d442224da	{"action":"login","actor_id":"010c5300-c376-4b6a-a339-54a68c8941a7","actor_username":"writewrite@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:02:25.188548+00	
00000000-0000-0000-0000-000000000000	cc70f050-9a6a-4326-add5-10e9108995d8	{"action":"logout","actor_id":"010c5300-c376-4b6a-a339-54a68c8941a7","actor_username":"writewrite@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 00:05:36.665371+00	
00000000-0000-0000-0000-000000000000	58b3cea2-2baa-4eda-bfb8-23eacf14a21c	{"action":"login","actor_id":"010c5300-c376-4b6a-a339-54a68c8941a7","actor_username":"writewrite@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:05:42.266141+00	
00000000-0000-0000-0000-000000000000	6d262ef6-231e-48ca-b1ff-6740bcefdca9	{"action":"logout","actor_id":"010c5300-c376-4b6a-a339-54a68c8941a7","actor_username":"writewrite@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 00:15:01.385247+00	
00000000-0000-0000-0000-000000000000	a37f2999-ba87-42e3-a11f-95caba0d5a32	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:15:12.71117+00	
00000000-0000-0000-0000-000000000000	e7f4a04c-6a3c-4e4f-a1f3-52498379d1a0	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 00:16:06.992638+00	
00000000-0000-0000-0000-000000000000	4de8ee1a-8fb8-4bc7-91f6-863006491b5c	{"action":"login","actor_id":"31428e86-8fee-4395-8b7e-4a6f1effa244","actor_username":"write@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:16:13.487359+00	
00000000-0000-0000-0000-000000000000	14319b9b-c9c3-492d-901b-611f3b94ce77	{"action":"logout","actor_id":"31428e86-8fee-4395-8b7e-4a6f1effa244","actor_username":"write@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 00:18:52.906202+00	
00000000-0000-0000-0000-000000000000	69c7b26f-519f-4d78-9ed1-550681941be2	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:18:56.218851+00	
00000000-0000-0000-0000-000000000000	128f6e65-1537-4ab6-a0c1-b00d626a3b7c	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 00:20:05.490083+00	
00000000-0000-0000-0000-000000000000	0a557a1b-e139-4eb5-a3e5-5125ba82e40b	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:20:08.743989+00	
00000000-0000-0000-0000-000000000000	2f4d0297-254e-4168-a730-7e7d2b766e26	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:35:30.620248+00	
00000000-0000-0000-0000-000000000000	b87129e4-aefe-4e05-87b5-f2e95c2c34cd	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 00:35:48.321383+00	
00000000-0000-0000-0000-000000000000	b70aaeb5-9b92-41ba-af69-33ea2b7a9a63	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:42:39.835834+00	
00000000-0000-0000-0000-000000000000	6f7574b3-9f10-4aa9-ad89-3e895a63d1b9	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 00:43:18.046555+00	
00000000-0000-0000-0000-000000000000	26a8ca6b-3c3a-4b98-9619-4d9e7955f52c	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:46:13.922322+00	
00000000-0000-0000-0000-000000000000	4e20b753-e6ec-4dff-bfae-2ace6b1a8e5e	{"action":"user_signedup","actor_id":"b3e33f3b-5e2b-4a53-9c4e-d290c2670db3","actor_username":"view@user.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-01-27 00:47:10.532447+00	
00000000-0000-0000-0000-000000000000	d7d81421-adcc-4e69-a1a7-7b8b6ad9ea04	{"action":"login","actor_id":"b3e33f3b-5e2b-4a53-9c4e-d290c2670db3","actor_username":"view@user.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:47:10.536707+00	
00000000-0000-0000-0000-000000000000	63257c37-ff7d-4faa-acaa-c34c2fd3b4c8	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 00:55:09.083658+00	
00000000-0000-0000-0000-000000000000	2dcfb928-c894-4d2f-a7d3-62fb31d4c4e4	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 01:01:49.668232+00	
00000000-0000-0000-0000-000000000000	ddd33602-c815-4d4a-aceb-d5b77bdf1042	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 17:33:37.455652+00	
00000000-0000-0000-0000-000000000000	fe898a15-63bb-4447-a2e8-91429d98127b	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 19:07:34.880429+00	
00000000-0000-0000-0000-000000000000	267457b0-ae79-4e6b-8472-22253fa1d9a0	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 19:07:34.883263+00	
00000000-0000-0000-0000-000000000000	e1135bb6-fe2a-4a03-9cfd-64975a9979fa	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 20:07:49.935175+00	
00000000-0000-0000-0000-000000000000	70768ca0-7ca4-4d24-ac89-6f663d98f737	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 20:07:49.937363+00	
00000000-0000-0000-0000-000000000000	34ed4572-7cd0-4e13-a7e0-dc64ff4a4069	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 20:32:26.218006+00	
00000000-0000-0000-0000-000000000000	5acab658-2da1-4e17-bb8c-8c4a8c39975a	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 20:51:53.926995+00	
00000000-0000-0000-0000-000000000000	853f0836-1631-40cd-8d27-06f38a0c11d9	{"action":"token_refreshed","actor_id":"b3e33f3b-5e2b-4a53-9c4e-d290c2670db3","actor_username":"view@user.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 21:00:45.049378+00	
00000000-0000-0000-0000-000000000000	2a16c41c-944b-4527-8fdb-4f1ab5851102	{"action":"token_revoked","actor_id":"b3e33f3b-5e2b-4a53-9c4e-d290c2670db3","actor_username":"view@user.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 21:00:45.051805+00	
00000000-0000-0000-0000-000000000000	cc8c8e53-2281-42a6-9a4a-c4f853d1b60e	{"action":"logout","actor_id":"b3e33f3b-5e2b-4a53-9c4e-d290c2670db3","actor_username":"view@user.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 21:01:07.076984+00	
00000000-0000-0000-0000-000000000000	cb8d546c-b427-4fd8-a253-54f838636342	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 21:04:45.714754+00	
00000000-0000-0000-0000-000000000000	d95b48fd-01d4-4219-a49b-e6bd965b47bc	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 21:05:34.529155+00	
00000000-0000-0000-0000-000000000000	68ae1d10-0503-4a47-b65a-cae70d00733b	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 21:05:37.710386+00	
00000000-0000-0000-0000-000000000000	02a734d6-44e8-4f76-b1ff-1274d557642d	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 21:06:26.697425+00	
00000000-0000-0000-0000-000000000000	82cc04da-0053-4d0e-829e-f01e266ca7aa	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 21:06:28.709108+00	
00000000-0000-0000-0000-000000000000	1194bbc0-08ef-4af5-a7fc-43e8d3e0bcf2	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 21:06:31.586023+00	
00000000-0000-0000-0000-000000000000	11839f7f-94ad-4d04-a54a-b6686a9e9ff8	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 21:06:50.62876+00	
00000000-0000-0000-0000-000000000000	2ca39632-5bbc-4343-9592-78d98ffabe65	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 21:54:17.5873+00	
00000000-0000-0000-0000-000000000000	510f9540-0f5e-48f8-ab8c-c85116b4329e	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 21:54:34.441829+00	
00000000-0000-0000-0000-000000000000	0d60cf5b-047a-4b93-90a3-81bddbf04901	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 21:57:09.094219+00	
00000000-0000-0000-0000-000000000000	2c89721d-d3ac-40ea-8dd3-768876475b8e	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 21:57:20.859283+00	
00000000-0000-0000-0000-000000000000	80f7f932-31b1-41af-8dc8-834f1eaddc4d	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 22:20:59.560509+00	
00000000-0000-0000-0000-000000000000	0440ba2c-bcab-4199-b477-5de67b68c7dc	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 22:21:05.677404+00	
00000000-0000-0000-0000-000000000000	fc450a36-7630-4986-8c37-adfc0309cbe6	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 22:28:44.921563+00	
00000000-0000-0000-0000-000000000000	8c755c7f-25c3-4089-b234-75768d90111f	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 22:28:55.981494+00	
00000000-0000-0000-0000-000000000000	de331349-1992-48af-afd7-b1f890d95f70	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 22:29:04.635318+00	
00000000-0000-0000-0000-000000000000	11cb43a3-a29f-4543-adab-a1c1f9433bc3	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 22:29:10.784189+00	
00000000-0000-0000-0000-000000000000	6e5aa6e8-1bb8-4166-b0fa-db4858811fef	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 22:31:29.742252+00	
00000000-0000-0000-0000-000000000000	0a7f7b0f-4b41-4a63-9a7b-cd3ff54322d2	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 22:44:23.403979+00	
00000000-0000-0000-0000-000000000000	c020fb9e-f7f3-47fe-8be8-15d6eb395ca2	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 22:46:23.664717+00	
00000000-0000-0000-0000-000000000000	cae4138c-6c86-4a76-bfaf-f3d6b0f6f0fc	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 22:46:37.482296+00	
00000000-0000-0000-0000-000000000000	376e7df1-d632-4130-bafa-d93c2c4c7cbf	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 22:54:33.125602+00	
00000000-0000-0000-0000-000000000000	8cf9fce4-5618-4157-9ca7-d9f0b07a7d2c	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 22:54:41.730035+00	
00000000-0000-0000-0000-000000000000	b66decd2-b9ab-4d45-8b3d-9e5aba6f391d	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 22:55:01.484431+00	
00000000-0000-0000-0000-000000000000	161a8961-8b7c-4093-88a2-fde9c231d1c5	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 22:58:14.052946+00	
00000000-0000-0000-0000-000000000000	af89f7bc-6f3e-4a6d-89b1-3669e0dd70ff	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 22:59:30.874797+00	
00000000-0000-0000-0000-000000000000	1537000a-729c-44bd-a4d2-d366fe3b1e39	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 23:02:01.270397+00	
00000000-0000-0000-0000-000000000000	55817558-b16c-44cd-a3a3-5a9c39a62bbf	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 23:02:28.822414+00	
00000000-0000-0000-0000-000000000000	82c8f26a-9977-4570-83d6-dcea19e32bea	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-27 23:04:09.307686+00	
00000000-0000-0000-0000-000000000000	4efd5937-5967-4691-aea6-ae369e76032a	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-27 23:04:33.038941+00	
00000000-0000-0000-0000-000000000000	86f67ee5-ca8f-46da-97fb-7c2c1b5652ef	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 00:01:29.130028+00	
00000000-0000-0000-0000-000000000000	a96b957d-d0ca-4fad-8cd2-e30b08b3bd16	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-28 00:01:43.181294+00	
00000000-0000-0000-0000-000000000000	a03d34ff-4f09-45cb-bf82-83b36c44aaba	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 00:03:56.880844+00	
00000000-0000-0000-0000-000000000000	8d406f96-8f75-4015-bce0-fc2fbe877f19	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-28 09:44:49.870324+00	
00000000-0000-0000-0000-000000000000	ab93e6cc-6443-4d19-8d26-214b3b6dea4e	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 09:45:38.105198+00	
00000000-0000-0000-0000-000000000000	188779bc-c552-43b9-8b7a-04279d1f8e41	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-28 09:45:58.29643+00	
00000000-0000-0000-0000-000000000000	08338203-ea07-4296-a8d5-db0aa3a99909	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 09:46:16.468209+00	
00000000-0000-0000-0000-000000000000	a6718430-c8d0-4bd1-865e-65e0ff7a809d	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-28 09:46:24.726768+00	
00000000-0000-0000-0000-000000000000	70923c4b-f6fd-4b03-88e2-bce6542eb182	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 09:47:23.831352+00	
00000000-0000-0000-0000-000000000000	d966df76-aba9-4a88-8251-06d59df8ce89	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-28 09:47:34.30616+00	
00000000-0000-0000-0000-000000000000	40c624bb-a8ae-48c4-864e-f9c7f69d8dd9	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 09:49:06.636823+00	
00000000-0000-0000-0000-000000000000	64703277-3fbf-4781-80dc-7247d5e209b9	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-28 09:49:21.033403+00	
00000000-0000-0000-0000-000000000000	059ed188-11f4-4bae-9a73-91f785b6c34f	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 09:50:08.535208+00	
00000000-0000-0000-0000-000000000000	ee08a13a-3d00-40b1-8b37-b5d9f8bab0ce	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-28 09:50:18.545854+00	
00000000-0000-0000-0000-000000000000	1964bf9b-936c-4698-ba9c-d5e887aeee73	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 09:52:25.484919+00	
00000000-0000-0000-0000-000000000000	90d474a9-2844-479b-9e9b-e4a9e7f9125b	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-28 18:55:05.750977+00	
00000000-0000-0000-0000-000000000000	3ee3652d-fe2d-4522-b9da-b347306b38d5	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-28 19:34:12.178689+00	
00000000-0000-0000-0000-000000000000	ea8a973b-83e4-445c-a28d-5ab548745002	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-29 00:44:57.652134+00	
00000000-0000-0000-0000-000000000000	3d174789-0da2-4919-b7b2-3ba3155e596b	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-29 00:50:54.026221+00	
00000000-0000-0000-0000-000000000000	4b7b128b-c9c5-4a43-98e3-abe44cbf81da	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-29 00:56:31.317943+00	
00000000-0000-0000-0000-000000000000	dc17d2eb-4d33-4e8b-bda9-c24399211a71	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-01-29 01:08:00.566884+00	
00000000-0000-0000-0000-000000000000	84d4b5be-947d-41c9-8462-616414b91c47	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-29 01:13:49.833462+00	
00000000-0000-0000-0000-000000000000	9181dc9d-5863-47ed-96cb-84e0e51ad9cb	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 18:56:11.886826+00	
00000000-0000-0000-0000-000000000000	84f59010-4d8c-4188-8f01-755948639dee	{"action":"user_signedup","actor_id":"2b035026-bc5d-43f5-b6de-a5a0c6f319ae","actor_username":"test@test1.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-02-03 19:17:36.341052+00	
00000000-0000-0000-0000-000000000000	08fa1e7f-f072-4627-8939-ecaa6dabfed6	{"action":"login","actor_id":"2b035026-bc5d-43f5-b6de-a5a0c6f319ae","actor_username":"test@test1.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 19:17:36.349059+00	
00000000-0000-0000-0000-000000000000	37d8dd3a-bf22-4f5d-a574-59efa4c6aad0	{"action":"logout","actor_id":"2b035026-bc5d-43f5-b6de-a5a0c6f319ae","actor_username":"test@test1.com","actor_via_sso":false,"log_type":"account"}	2025-02-03 19:19:10.915132+00	
00000000-0000-0000-0000-000000000000	54f189e1-9fdd-4a89-91af-0ff3336a645b	{"action":"login","actor_id":"2b035026-bc5d-43f5-b6de-a5a0c6f319ae","actor_username":"test@test1.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 19:19:32.948945+00	
00000000-0000-0000-0000-000000000000	befab726-94ad-4373-8201-b4ef8ec2a9b1	{"action":"logout","actor_id":"2b035026-bc5d-43f5-b6de-a5a0c6f319ae","actor_username":"test@test1.com","actor_via_sso":false,"log_type":"account"}	2025-02-03 19:25:38.964017+00	
00000000-0000-0000-0000-000000000000	6965fda0-279c-4263-abac-4098d5bf63cb	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 19:25:47.430772+00	
00000000-0000-0000-0000-000000000000	c27868e6-ce2c-407f-ad7f-8c39306fe15e	{"action":"user_signedup","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-02-03 19:26:20.713881+00	
00000000-0000-0000-0000-000000000000	f55a2084-9600-4ca0-9cac-73accfef61d8	{"action":"login","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 19:26:20.717769+00	
00000000-0000-0000-0000-000000000000	6bc2fac5-6dee-4c56-85fe-8618b04630ea	{"action":"token_refreshed","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 20:26:44.74313+00	
00000000-0000-0000-0000-000000000000	82801f8d-9ded-4145-88e0-3a91aa2b0d9d	{"action":"token_revoked","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 20:26:44.746037+00	
00000000-0000-0000-0000-000000000000	018969bc-f49c-4e8b-b79d-a8bb2b514165	{"action":"token_refreshed","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 21:27:50.813263+00	
00000000-0000-0000-0000-000000000000	3b52faa0-0b72-4731-b50a-e041d3968219	{"action":"token_revoked","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 21:27:50.814989+00	
00000000-0000-0000-0000-000000000000	5498c85d-d637-4043-8996-df57af46c0e7	{"action":"token_refreshed","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 22:26:35.436698+00	
00000000-0000-0000-0000-000000000000	0bf2367d-c5c0-4250-9751-025bd8732703	{"action":"token_revoked","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 22:26:35.441208+00	
00000000-0000-0000-0000-000000000000	594a82e0-8817-4645-80f3-4cc81058c8c0	{"action":"logout","actor_id":"963db91f-33c2-4b3e-81ae-b9e0ddea1069","actor_username":"test01@mail.com","actor_via_sso":false,"log_type":"account"}	2025-02-03 22:27:58.201266+00	
00000000-0000-0000-0000-000000000000	6e095897-b38c-4bbe-8a9f-3d65e678f3a1	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 12:21:38.509494+00	
00000000-0000-0000-0000-000000000000	095c558e-add2-407d-bc36-0f8b40fda45c	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-02-15 12:23:57.539381+00	
00000000-0000-0000-0000-000000000000	c5cf3991-7888-48e2-8db9-cddcb7ea86f1	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 12:28:09.305632+00	
00000000-0000-0000-0000-000000000000	b485acfc-075c-4804-a6bf-59efdb6d3ad0	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 12:29:25.811538+00	
00000000-0000-0000-0000-000000000000	0b752b29-f694-4ac3-b469-7e24bf5d0ca1	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 12:34:18.501937+00	
00000000-0000-0000-0000-000000000000	53910cea-5ac1-459e-9e63-fb98eb03ee70	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-02-15 12:41:04.456381+00	
00000000-0000-0000-0000-000000000000	025ad606-16fe-4934-9f85-ee4969a6e31c	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 12:41:12.819087+00	
00000000-0000-0000-0000-000000000000	39edc7ee-e985-44af-bf2d-f39269cb21b2	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 12:57:40.945666+00	
00000000-0000-0000-0000-000000000000	605b34ff-f9df-4544-ba97-1304f9e54048	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 18:32:02.724041+00	
00000000-0000-0000-0000-000000000000	44b09c5f-531b-4865-b34d-ba67e997fb42	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-15 18:35:10.299162+00	
00000000-0000-0000-0000-000000000000	2065bc6f-8740-4932-8b33-ec8781b97222	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-15 18:35:10.30349+00	
00000000-0000-0000-0000-000000000000	1f4c4065-eca3-4ae2-97f3-5e6c63c5d7a1	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-02-15 18:39:42.785817+00	
00000000-0000-0000-0000-000000000000	41541160-6fee-428e-b5de-bd8ddd5c8f78	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 21:00:58.800465+00	
00000000-0000-0000-0000-000000000000	774502ee-c09a-473f-869b-3308cb0701d7	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 22:02:14.076208+00	
00000000-0000-0000-0000-000000000000	81dc21b3-8b7b-450b-9666-5a795a8171b9	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 22:10:26.794074+00	
00000000-0000-0000-0000-000000000000	e4b84d37-fe0b-4221-8bbb-8becc665ee14	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 14:17:31.844281+00	
00000000-0000-0000-0000-000000000000	4767803b-826a-407c-b43a-ce45260f6a24	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 14:17:31.879768+00	
00000000-0000-0000-0000-000000000000	d2361cfd-2192-4328-afb9-79200a39ceb7	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-16 15:29:40.44148+00	
00000000-0000-0000-0000-000000000000	5d754206-87a1-4a99-b681-b80dadb27b39	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-24 14:56:44.991865+00	
00000000-0000-0000-0000-000000000000	ee0ba3cf-2d73-406d-9ed2-2c1253835d37	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-24 14:56:45.017708+00	
00000000-0000-0000-0000-000000000000	6843805e-791b-4bac-a77a-dd7a1cc18976	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-24 15:56:54.442186+00	
00000000-0000-0000-0000-000000000000	8873332a-abc8-49e9-afea-36947198f59f	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-02-24 15:56:54.451897+00	
00000000-0000-0000-0000-000000000000	1936c74b-2b15-478e-adc5-0c6f19209615	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-03-22 23:40:46.248412+00	
00000000-0000-0000-0000-000000000000	c6260073-e50d-4be1-82ed-1975dafe222c	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-03-22 23:40:46.276821+00	
00000000-0000-0000-0000-000000000000	0e453658-9794-46e1-b536-5134d0841837	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-03-27 11:36:12.083737+00	
00000000-0000-0000-0000-000000000000	233768e5-ac47-49ca-8513-179afaef4555	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-03-27 11:36:12.098596+00	
00000000-0000-0000-0000-000000000000	8aef9cec-91bd-4784-8d67-10788da7ba08	{"action":"logout","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account"}	2025-03-27 11:36:26.412046+00	
00000000-0000-0000-0000-000000000000	92e63333-7d8f-488e-9946-6a2a54710ac2	{"action":"login","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-03-27 11:36:37.360179+00	
00000000-0000-0000-0000-000000000000	a0fc37da-58b4-4f4a-a760-b2ffacd7b03b	{"action":"token_refreshed","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-03-28 19:24:51.181244+00	
00000000-0000-0000-0000-000000000000	1b8fc0d6-9ef9-4efc-af07-8e5636161d67	{"action":"token_revoked","actor_id":"30e464df-5f76-439e-bdac-ae9b2f018f89","actor_username":"admin@mail.com","actor_via_sso":false,"log_type":"token"}	2025-03-28 19:24:51.200906+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	35f2dee3-c981-40b3-88c1-25303d42e1a7	authenticated	authenticated	contact@integr-ai.com	$2a$06$mgk1HUmtk5do9rGQD3kIXe/ZGX1a/TdcXQqV46LfTVb2SjGNZ6kba	2025-01-26 00:23:01.652439+00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2025-01-26 00:23:01.652439+00	2025-01-26 00:23:01.652439+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	fa63f44f-ae07-4c8d-a8b2-327c0e866191	authenticated	authenticated	testtest@test.com	$2a$10$hlaSui9NibNruVJFh2Hnp.57DgtV2UF/kq.kck9I1xlcH4apO688C	2025-01-26 22:19:08.487291+00	\N		\N		\N			\N	2025-01-26 22:19:33.071497+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-01-26 22:19:08.483977+00	2025-01-26 22:19:33.074758+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	31428e86-8fee-4395-8b7e-4a6f1effa244	authenticated	authenticated	write@mail.com	$2a$10$s8AAoZDKDjQTZPCAiV1sS.lHvA7QaKA0Mw/XioQC0hkQr5o6io7ES	2025-01-26 23:40:59.984667+00	\N		\N		\N			\N	2025-01-27 00:16:13.488031+00	{"provider": "email", "providers": ["email"]}	{"sub": "31428e86-8fee-4395-8b7e-4a6f1effa244", "email": "write@mail.com", "email_verified": true, "phone_verified": false}	\N	2025-01-26 23:40:59.967425+00	2025-01-27 00:16:13.490738+00	\N	\N			\N		0	\N		\N	f	2025-01-27 00:19:35.775537+00	f
00000000-0000-0000-0000-000000000000	b3e33f3b-5e2b-4a53-9c4e-d290c2670db3	authenticated	authenticated	view@user.com	$2a$10$Pze3KGTPIj288xbAk8SW2ulAqorWS9x1bg4bNUgWrx036/ShsY7Ny	2025-01-27 00:47:10.532987+00	\N		\N		\N			\N	2025-01-27 00:47:10.537658+00	{"provider": "email", "providers": ["email"]}	{"sub": "b3e33f3b-5e2b-4a53-9c4e-d290c2670db3", "email": "view@user.com", "email_verified": true, "phone_verified": false}	\N	2025-01-27 00:47:10.52129+00	2025-01-27 21:00:45.057339+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	30e464df-5f76-439e-bdac-ae9b2f018f89	authenticated	authenticated	admin@mail.com	$2a$10$5VxS73Q9hPCK36t6ynWye.Qtw6YHgtV0OF53w4/hjufRAgT2fwPn2	2025-01-26 21:07:57.360074+00	\N		\N		\N			\N	2025-03-27 11:36:37.361469+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-01-26 21:07:57.348856+00	2025-03-28 19:24:51.224344+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	963db91f-33c2-4b3e-81ae-b9e0ddea1069	authenticated	authenticated	test01@mail.com	$2a$10$pUFFmKw6nkknoqJkVMtWMuoJ3MjfJM4SfnPF0MTJ5.8MXw7g3MEfy	2025-02-03 19:26:20.714335+00	\N		\N		\N			\N	2025-02-03 19:26:20.718347+00	{"provider": "email", "providers": ["email"]}	{"sub": "963db91f-33c2-4b3e-81ae-b9e0ddea1069", "role": "admin", "email": "test01@mail.com", "email_verified": true, "phone_verified": false}	\N	2025-02-03 19:26:20.707839+00	2025-02-03 22:26:35.449314+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	2b035026-bc5d-43f5-b6de-a5a0c6f319ae	authenticated	authenticated	test@test1.com	$2a$10$Zs42Uhknl7.2RNBowNO/g.5GEY1gdFx2CkPWHB1gWG76Eb70EGlJW	2025-02-03 19:17:36.343148+00	\N		\N		\N			\N	2025-02-03 19:19:32.954149+00	{"provider": "email", "providers": ["email"]}	{"sub": "2b035026-bc5d-43f5-b6de-a5a0c6f319ae", "email": "test@test1.com", "email_verified": true, "phone_verified": false}	\N	2025-02-03 19:17:36.308199+00	2025-02-03 19:19:32.957496+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	010c5300-c376-4b6a-a339-54a68c8941a7	authenticated	authenticated	writewrite@mail.com	$2a$10$x8HMxwnEODybLB95vMpmROiwkPtKNnuDTTfjHZm3w7xTEWj7cr0nW	2025-01-27 00:02:25.185125+00	\N		\N		\N			\N	2025-01-27 00:05:42.266802+00	{"provider": "email", "providers": ["email"]}	{"sub": "010c5300-c376-4b6a-a339-54a68c8941a7", "email": "writewrite@mail.com", "email_verified": true, "phone_verified": false}	\N	2025-01-27 00:02:25.177418+00	2025-01-27 00:05:42.268747+00	\N	\N			\N		0	\N		\N	f	2025-01-27 00:15:43.398234+00	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
30e464df-5f76-439e-bdac-ae9b2f018f89	30e464df-5f76-439e-bdac-ae9b2f018f89	{"sub": "30e464df-5f76-439e-bdac-ae9b2f018f89", "email": "admin@mail.com", "email_verified": false, "phone_verified": false}	email	2025-01-26 21:07:57.356957+00	2025-01-26 21:07:57.357031+00	2025-01-26 21:07:57.357031+00	46f56a09-ede2-49f2-abb4-fe4e4eda858c
fa63f44f-ae07-4c8d-a8b2-327c0e866191	fa63f44f-ae07-4c8d-a8b2-327c0e866191	{"sub": "fa63f44f-ae07-4c8d-a8b2-327c0e866191", "email": "testtest@test.com", "email_verified": false, "phone_verified": false}	email	2025-01-26 22:19:08.485247+00	2025-01-26 22:19:08.485297+00	2025-01-26 22:19:08.485297+00	4e7aa924-88b7-4123-91e5-04079e551836
31428e86-8fee-4395-8b7e-4a6f1effa244	31428e86-8fee-4395-8b7e-4a6f1effa244	{"sub": "31428e86-8fee-4395-8b7e-4a6f1effa244", "email": "write@mail.com", "email_verified": false, "phone_verified": false}	email	2025-01-26 23:40:59.979798+00	2025-01-26 23:40:59.979854+00	2025-01-26 23:40:59.979854+00	6cadf58f-dcd6-4620-b20e-656ffa4b68a6
010c5300-c376-4b6a-a339-54a68c8941a7	010c5300-c376-4b6a-a339-54a68c8941a7	{"sub": "010c5300-c376-4b6a-a339-54a68c8941a7", "email": "writewrite@mail.com", "email_verified": false, "phone_verified": false}	email	2025-01-27 00:02:25.181761+00	2025-01-27 00:02:25.181809+00	2025-01-27 00:02:25.181809+00	29c3cd60-bc9b-451d-82cb-296a79bd48ed
b3e33f3b-5e2b-4a53-9c4e-d290c2670db3	b3e33f3b-5e2b-4a53-9c4e-d290c2670db3	{"sub": "b3e33f3b-5e2b-4a53-9c4e-d290c2670db3", "email": "view@user.com", "email_verified": false, "phone_verified": false}	email	2025-01-27 00:47:10.528722+00	2025-01-27 00:47:10.528775+00	2025-01-27 00:47:10.528775+00	f7b7fc88-a2c3-49e2-b72a-fbd29ef8f749
2b035026-bc5d-43f5-b6de-a5a0c6f319ae	2b035026-bc5d-43f5-b6de-a5a0c6f319ae	{"sub": "2b035026-bc5d-43f5-b6de-a5a0c6f319ae", "email": "test@test1.com", "email_verified": false, "phone_verified": false}	email	2025-02-03 19:17:36.33339+00	2025-02-03 19:17:36.333456+00	2025-02-03 19:17:36.333456+00	c6d4e7fa-ee2b-470e-89fe-b74aedf2e677
963db91f-33c2-4b3e-81ae-b9e0ddea1069	963db91f-33c2-4b3e-81ae-b9e0ddea1069	{"sub": "963db91f-33c2-4b3e-81ae-b9e0ddea1069", "role": "admin", "email": "test01@mail.com", "email_verified": false, "phone_verified": false}	email	2025-02-03 19:26:20.711506+00	2025-02-03 19:26:20.711556+00	2025-02-03 19:26:20.711556+00	fbdcaecb-35d1-49be-9924-a055b300cac4
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
e9926d43-1bc1-4a50-ac8e-3c4ee9cddaec	30e464df-5f76-439e-bdac-ae9b2f018f89	2025-03-27 11:36:37.362622+00	2025-03-28 19:24:51.234285+00	\N	aal1	\N	2025-03-28 19:24:51.234187	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36	81.136.146.251	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
e9926d43-1bc1-4a50-ac8e-3c4ee9cddaec	2025-03-27 11:36:37.372819+00	2025-03-27 11:36:37.372819+00	password	084bc941-b8f9-461b-82cc-85c78d935ea7
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	90	4wD3RKCHw6SZxWlh2P8Ylg	30e464df-5f76-439e-bdac-ae9b2f018f89	t	2025-03-27 11:36:37.371009+00	2025-03-28 19:24:51.20166+00	\N	e9926d43-1bc1-4a50-ac8e-3c4ee9cddaec
00000000-0000-0000-0000-000000000000	91	n2x0mq_kaS2hjvqwRZ0_FQ	30e464df-5f76-439e-bdac-ae9b2f018f89	f	2025-03-28 19:24:51.213451+00	2025-03-28 19:24:51.213451+00	4wD3RKCHw6SZxWlh2P8Ylg	e9926d43-1bc1-4a50-ac8e-3c4ee9cddaec
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."profiles" ("id", "role", "created_at", "active") FROM stdin;
30e464df-5f76-439e-bdac-ae9b2f018f89	admin	2025-01-26 21:13:07.07661+00	t
fa63f44f-ae07-4c8d-a8b2-327c0e866191	admin	2025-01-26 22:19:08.800343+00	t
010c5300-c376-4b6a-a339-54a68c8941a7	write	2025-01-27 00:02:25.177088+00	f
31428e86-8fee-4395-8b7e-4a6f1effa244	write	2025-01-26 23:40:59.967425+00	f
b3e33f3b-5e2b-4a53-9c4e-d290c2670db3	write	2025-01-27 00:47:10.520951+00	t
35f2dee3-c981-40b3-88c1-25303d42e1a7	admin	2025-01-26 00:23:01.652439+00	t
2b035026-bc5d-43f5-b6de-a5a0c6f319ae	write	2025-02-03 19:17:36.307058+00	t
963db91f-33c2-4b3e-81ae-b9e0ddea1069	write	2025-02-03 19:26:20.707537+00	t
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."customers" ("id", "account_number", "email", "address", "security_pin", "phone", "date_of_birth", "current_balance", "amount_due", "due_date", "created_at", "created_by", "name", "active") FROM stdin;
9050ee39-ae58-4145-a208-99c835e0c399	OFZ-8481	admin@testmailmail.com	17 street	0000	5645465654	1999-01-01	0.00	0.00	\N	2025-01-28 09:48:17.565141+00	30e464df-5f76-439e-bdac-ae9b2f018f89	test client name 	f
832c8654-2a6a-42d2-bfa5-cb7a051b7841	ZSO-1670	testclient@mail.com	271 Anlaby Rd	0000	6556465465	1990-01-01	125.00	125.00	\N	2025-01-26 22:29:31.687113+00	fa63f44f-ae07-4c8d-a8b2-327c0e866191	Test Client	t
f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	FUH-1207	alice@mail.com	10 Copperfield House, Michigan 054552	1234	4565551111  	1990-01-01	65.99	65.99	\N	2025-01-28 18:57:15.351341+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Alice Atkinson	t
ce91d08c-f93a-4862-9ff5-57528099e293	ETJ-6824	andrewrobinson@mail.com	55 Kimono Street Indiana 57845	1234	789456123	1999-02-01	0.00	0.00	\N	2025-01-27 17:36:24.900623+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Andrew Robinson	f
36aaebea-8a99-4054-b707-8745c6800225	TAF-4252	noahrobertson@mail.com	11 street	0000	1111111111111	1999-02-02	0.00	0.00	\N	2025-02-03 19:04:51.416563+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Noah Robertson	t
3672de78-e872-4299-b0f1-ea7e0955331d	XZS-9265	robertkyo@mail.com	81 Cucamonga Road	0000	6556465465	1990-01-01	14.99	14.99	\N	2025-01-27 00:16:58.131935+00	31428e86-8fee-4395-8b7e-4a6f1effa244	Robert Kyo	t
32a15fff-8a35-4d42-962f-577d0a0e8a30	XIY-2053	admintest@mail.com	17 street	0000	54656546546	1990-01-01	0.00	0.00	\N	2025-01-28 09:50:59.174908+00	30e464df-5f76-439e-bdac-ae9b2f018f89	test lient name	t
8ae5674b-3669-4f7d-961e-a8149aba3f25	ITD-6084	alicenashville@mail.com	17 Test Address Arizona 545454	0000	2222222222	1999-01-01	0.00	0.00	\N	2025-01-27 22:14:40.913727+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Alice Nashville	t
7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	QOM-2544	stevewilson@noemail.com	17 copperfield house	0000	1231234564	1988-02-05	45.00	45.00	\N	2025-01-27 00:49:07.321514+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Steve Wilson	t
a9a74b1b-0718-4512-87e0-85919916521a	SET-6725	admin@mail.com	TEST	0000	65465456465465	1999-01-01	0.00	0.00	\N	2025-01-27 22:47:13.847532+00	30e464df-5f76-439e-bdac-ae9b2f018f89	TEST	f
1cc24daf-d700-4752-b3e2-60abb54fbb7f	YXG-4680	admin@mailTEST.com	ASDASD ADDRESS 	0000	545646454654	1990-01-01	0.00	0.00	\N	2025-01-27 22:55:49.131206+00	30e464df-5f76-439e-bdac-ae9b2f018f89	NAME NAME	t
3e308f47-0745-44f4-9dee-062adc33f77d	EEX-8085	admin@mailTESTcom	TEST ADDRESS	0000	5654646546546	1990-01-01	0.00	0.00	\N	2025-01-27 23:03:16.439578+00	30e464df-5f76-439e-bdac-ae9b2f018f89	CLIENT TEST	t
bc678765-6da6-4d9a-b1a9-f3de7bed9a5d	YPF-7724	admin@mTESTail.com	TEST ADDRESS 15	0000	4546456466546	1990-01-01	0.00	0.00	\N	2025-01-27 23:05:17.377238+00	30e464df-5f76-439e-bdac-ae9b2f018f89	TESST TEST CLIENT	f
ecf28dc5-2599-463d-9337-f8a1556d18c7	CXD-8654	admin@testemailtest.com	17 address	0000	64564654646	1999-01-01	0.00	0.00	\N	2025-01-28 00:02:24.461126+00	30e464df-5f76-439e-bdac-ae9b2f018f89	client test	f
d7cd15d3-f7ec-4af4-96f6-20b37f63e383	VNY-1711	camdiaz@mail.com	75 Street	1234	4545445454545	1995-03-03	1795.99	1795.99	\N	2025-02-03 19:16:08.795681+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Cameron Diaz	t
\.


--
-- Data for Name: credit_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credit_cards" ("id", "customer_id", "last_four", "card_type", "expiry_month", "expiry_year", "cardholder_name", "is_default", "autopay_enabled", "created_at", "created_by") FROM stdin;
9998b3e8-274d-417b-a461-6aa69bfeeaea	832c8654-2a6a-42d2-bfa5-cb7a051b7841	5465	discover	1	2027	test name	t	f	2025-01-26 22:30:39.13681+00	fa63f44f-ae07-4c8d-a8b2-327c0e866191
ddfa04ea-962b-469e-b56c-b2c00ed96e09	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	8888		12	2031	Alice Wilson	f	f	2025-01-27 22:12:28.963597+00	30e464df-5f76-439e-bdac-ae9b2f018f89
702428cb-a92e-49c7-808d-1188518d2d0c	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	4545		6	2027	Steve Wilson	t	t	2025-01-27 22:11:53.792217+00	30e464df-5f76-439e-bdac-ae9b2f018f89
4a5604aa-9bd2-4e83-924d-c0f4169e8040	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	1525		12	2028	Alice A.	t	f	2025-01-28 19:09:47.642212+00	30e464df-5f76-439e-bdac-ae9b2f018f89
82fe91cd-de91-4b07-9421-9d5a0de25c7d	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	5454	mastercard	8	2034	Atkinson Husband	f	f	2025-02-03 19:00:04.409528+00	30e464df-5f76-439e-bdac-ae9b2f018f89
48fca0ce-4426-4cea-92b8-9c77f307b9f2	36aaebea-8a99-4054-b707-8745c6800225	6464	visa	12	2034	Robert	t	f	2025-02-03 19:14:10.452787+00	30e464df-5f76-439e-bdac-ae9b2f018f89
ae67d0c6-7003-4f79-9b25-fd9f3ef8ca99	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	1231		12	2026	Carlos	t	t	2025-02-15 12:39:26.654396+00	30e464df-5f76-439e-bdac-ae9b2f018f89
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."items" ("id", "customer_id", "tracking_number", "status", "delivery_date", "price", "created_at", "created_by", "name") FROM stdin;
cebd0913-ad67-46ef-8730-a6054488cee5	832c8654-2a6a-42d2-bfa5-cb7a051b7841	ARBK02005	pending_shipment	2025-02-02	150.00	2025-01-26 22:30:08.983341+00	fa63f44f-ae07-4c8d-a8b2-327c0e866191	test item
a5e895b2-47c6-4431-9d3c-17fcaa65e78c	3672de78-e872-4299-b0f1-ea7e0955331d	LJTW00659	pending_shipment	2025-01-26	14.99	2025-01-27 00:17:18.160026+00	31428e86-8fee-4395-8b7e-4a6f1effa244	test item 2
d55818ef-4ce0-4e90-8434-fa2ae4b1ec5a	832c8654-2a6a-42d2-bfa5-cb7a051b7841	WNOS21067	pending_shipment	2025-01-31	50.00	2025-01-27 00:18:21.817076+00	31428e86-8fee-4395-8b7e-4a6f1effa244	test item 3
46bcef52-4816-4797-b6bf-fc368a9947a1	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	SLIJ21963	dispatched	2025-02-09	10.99	2025-01-27 00:49:58.025046+00	30e464df-5f76-439e-bdac-ae9b2f018f89	test item 5
3fe9c9ac-5f6f-47e5-b746-bba4fe16886c	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	ZGJN20906	pending_shipment	2025-02-04	15.99	2025-01-27 00:50:57.600885+00	b3e33f3b-5e2b-4a53-9c4e-d290c2670db3	test item 6
e60263d3-15dc-4179-b9be-8bafe1e4121a	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	VWVK06276	dispatched	2025-02-09	15.55	2025-01-27 21:56:05.535157+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Mask
f1a0988c-7745-424f-b749-7ff306950c80	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	NJGF41043	on_hold	2025-02-09	45.00	2025-01-27 22:07:43.93145+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Baseball Bat
7a682619-bfc4-4e72-9401-dd682e6032e7	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	QRSZ38634	dispatched	2025-02-09	2199.99	2025-01-28 19:07:04.652988+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Gaming Computer
cabb3bce-887f-4e3a-84ca-1867d95a3d88	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	JQGC63443	on_hold	2025-03-09	75.99	2025-02-03 18:57:37.479435+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Baseball Bat
04ed89e6-1774-421a-96e7-b802d0ca422c	36aaebea-8a99-4054-b707-8745c6800225	XKZE95902	dispatched	2025-02-21	15.99	2025-02-03 19:13:38.961502+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Ball
420da94e-572a-47a3-b0fb-a7618ae55e86	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	JEXJ27503	dispatched	2025-03-07	1400.00	2025-02-03 22:26:40.696014+00	963db91f-33c2-4b3e-81ae-b9e0ddea1069	iPhone 16 Pro Max
ad7e17dd-b8cc-49af-86bc-25e1c8062dc2	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	ENTS46187	dispatched	2025-03-09	500.00	2025-02-15 12:39:04.483151+00	30e464df-5f76-439e-bdac-ae9b2f018f89	Laptop
4e187be5-856d-4051-a83a-30c7a695e0ae	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	WMRJ50085	on_hold	2025-03-05	45.99	2025-02-15 22:08:09.063636+00	30e464df-5f76-439e-bdac-ae9b2f018f89	DIY
\.


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notes" ("id", "customer_id", "content", "created_at", "created_by") FROM stdin;
e745190c-ef25-4aaf-9ad4-c89e4094adf5	832c8654-2a6a-42d2-bfa5-cb7a051b7841	test note	2025-01-26 22:29:42.922991+00	fa63f44f-ae07-4c8d-a8b2-327c0e866191
3ed7d71d-8318-4271-88d9-ca0e3cdf94c8	3672de78-e872-4299-b0f1-ea7e0955331d	test	2025-01-27 00:17:02.264674+00	31428e86-8fee-4395-8b7e-4a6f1effa244
4c8515fb-2051-4bd6-90db-758797c8269a	832c8654-2a6a-42d2-bfa5-cb7a051b7841	note by rober kyo	2025-01-27 00:17:35.460782+00	31428e86-8fee-4395-8b7e-4a6f1effa244
901cc0b4-180c-4cfb-a5ed-9c6792588ed0	832c8654-2a6a-42d2-bfa5-cb7a051b7841	note added by admin@mail.com	2025-01-27 00:17:50.227758+00	31428e86-8fee-4395-8b7e-4a6f1effa244
032d2e17-fe68-4236-8eee-8da3cbbc187e	832c8654-2a6a-42d2-bfa5-cb7a051b7841	note added by write@mail.com	2025-01-27 00:18:00.887825+00	31428e86-8fee-4395-8b7e-4a6f1effa244
87f6f0aa-995d-4879-a418-9413e21026d9	ce91d08c-f93a-4862-9ff5-57528099e293	This account was created by mistake, setting it to inactive	2025-01-27 17:36:44.717416+00	30e464df-5f76-439e-bdac-ae9b2f018f89
f10d1efc-e1be-4661-843c-c2a1416edc72	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	Client called in to order a new Mask Item, the tracking number was provided	2025-01-27 22:09:26.720533+00	30e464df-5f76-439e-bdac-ae9b2f018f89
64bea723-28fd-4fa9-ab3d-287f7e5e029c	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	Steve called in to make a payment of 26.98, payment sucessfully processed	2025-01-27 22:09:59.638685+00	30e464df-5f76-439e-bdac-ae9b2f018f89
cf32b438-49df-4ef1-ab7e-842350ab2076	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	Steve Called in to Get his account deactivated, he was told the account will be auto closed by the EOM!	2025-01-27 22:10:48.342627+00	30e464df-5f76-439e-bdac-ae9b2f018f89
ba5df375-dc92-45f7-a168-55efc463d414	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	New Account Created, Account Security PIN Number: 1234	2025-01-28 19:05:13.726068+00	30e464df-5f76-439e-bdac-ae9b2f018f89
99c18605-f78a-48e4-b302-ca059cb99412	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	Customer Ordered a Gaming Computer, order placed and tracking number provided: QRSZ38634	2025-01-28 19:08:00.079209+00	30e464df-5f76-439e-bdac-ae9b2f018f89
e8bd61bf-8fbb-47cf-a031-43770e791158	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	Customer called in to make a payment in full for the Gaming Laptop! The payment was processed successfully using a different credit card	2025-01-28 19:18:12.768553+00	30e464df-5f76-439e-bdac-ae9b2f018f89
2798e638-4acd-49b8-81d2-3f4bb0bb60f6	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	Note test	2025-02-03 18:56:47.050607+00	30e464df-5f76-439e-bdac-ae9b2f018f89
8923edaa-2769-490b-9fa7-9f972ecec7c6	36aaebea-8a99-4054-b707-8745c6800225	Pin 0000	2025-02-03 19:13:16.335602+00	30e464df-5f76-439e-bdac-ae9b2f018f89
4194590b-95af-415a-a626-fe9206b04745	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	PIN 1234	2025-02-03 19:16:18.379333+00	30e464df-5f76-439e-bdac-ae9b2f018f89
3cd150ef-a256-4d2d-9270-9109e33bad65	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	Test Note on deployed website	2025-02-15 12:38:15.880352+00	30e464df-5f76-439e-bdac-ae9b2f018f89
98af3560-fd68-44b1-b3b4-7f1e91b7dea6	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	Test Note from DIY	2025-02-15 22:07:49.40612+00	30e464df-5f76-439e-bdac-ae9b2f018f89
9387f11c-317a-4405-a4e0-162565b9d604	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	ntest	2025-02-16 15:30:49.588098+00	30e464df-5f76-439e-bdac-ae9b2f018f89
98c15da3-0c5f-4b76-89fe-9e45dd1ffb4a	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	Customer called in to get their current balance.	2025-02-24 14:59:48.069838+00	30e464df-5f76-439e-bdac-ae9b2f018f89
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payments" ("id", "customer_id", "amount", "created_at", "created_by") FROM stdin;
f8eb2f96-9b92-44ed-b74d-96763ea26be2	832c8654-2a6a-42d2-bfa5-cb7a051b7841	75.00	2025-01-26 22:31:13.708578+00	fa63f44f-ae07-4c8d-a8b2-327c0e866191
18bd92f2-93ae-4a21-a1d4-a636e8d5500f	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	26.98	2025-01-27 00:51:52.559748+00	b3e33f3b-5e2b-4a53-9c4e-d290c2670db3
3dd42649-b016-40bf-a77a-219e08d02e9f	7a35d1db-7c8f-47c9-9fe0-2d964c764ab5	15.55	2025-01-27 22:06:25.261139+00	30e464df-5f76-439e-bdac-ae9b2f018f89
b18943a8-a183-4725-81e2-d722fb3d39f9	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	2199.99	2025-01-28 19:10:40.410502+00	30e464df-5f76-439e-bdac-ae9b2f018f89
867f8c30-c3ff-4322-b8f4-dfbcd48a0dbe	f69e1cc7-5e16-48db-9e50-762e7d2a5a2e	10.00	2025-02-03 19:01:36.660553+00	30e464df-5f76-439e-bdac-ae9b2f018f89
c30ea1c0-28fa-4f9e-aa39-41ef53b77a33	36aaebea-8a99-4054-b707-8745c6800225	15.99	2025-02-03 19:14:38.159572+00	30e464df-5f76-439e-bdac-ae9b2f018f89
ccf0a568-1abd-4aa9-81e6-580eebbf9b30	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	100.00	2025-02-15 12:23:22.867724+00	30e464df-5f76-439e-bdac-ae9b2f018f89
13be1b5a-e007-4bf4-ab89-0ad6ac915a67	d7cd15d3-f7ec-4af4-96f6-20b37f63e383	50.00	2025-02-15 12:40:04.685799+00	30e464df-5f76-439e-bdac-ae9b2f018f89
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 91, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
