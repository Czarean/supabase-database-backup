
\restrict rL0C0Gucw5bWxfS7W2ypeQ6ESCPNhrDw3tsgFLHV698bTCYtglSslV8f9eEZDlW


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


CREATE EXTENSION IF NOT EXISTS "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."item_status" AS ENUM (
    'pending_shipment',
    'on_hold',
    'delivered',
    'dispatched'
);


ALTER TYPE "public"."item_status" OWNER TO "postgres";


CREATE TYPE "public"."user_role" AS ENUM (
    'admin',
    'write',
    'view'
);


ALTER TYPE "public"."user_role" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."create_user_profile"("user_id" "uuid", "user_role" "text") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public', 'auth'
    AS $$
BEGIN
  -- Check if the current user is an admin
  IF NOT EXISTS (
    SELECT 1 FROM public.profiles 
    WHERE id = auth.uid() 
    AND role = 'admin'
  ) THEN
    RAISE EXCEPTION 'Only administrators can create new users';
  END IF;

  -- Create the profile
  INSERT INTO public.profiles (id, role)
  VALUES (
    user_id,
    user_role::user_role
  );
END;
$$;


ALTER FUNCTION "public"."create_user_profile"("user_id" "uuid", "user_role" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."delete_user"("user_id" "uuid") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'auth', 'public'
    AS $$
BEGIN
  -- Check if the current user is an admin
  IF NOT EXISTS (
    SELECT 1 FROM public.profiles 
    WHERE id = auth.uid() 
    AND role = 'admin'
  ) THEN
    RAISE EXCEPTION 'Only admins can delete users';
  END IF;

  -- Delete the user's profile first (this will trigger cascading deletes)
  DELETE FROM public.profiles WHERE id = user_id;
  
  -- Then delete the user from auth.users
  DELETE FROM auth.users WHERE id = user_id;
END;
$$;


ALTER FUNCTION "public"."delete_user"("user_id" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."generate_account_number"() RETURNS "text"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  new_account_number text;
  exists_count integer;
BEGIN
  LOOP
    -- Generate random account number
    new_account_number := 
      chr(65 + floor(random() * 26)::integer) ||
      chr(65 + floor(random() * 26)::integer) ||
      chr(65 + floor(random() * 26)::integer) ||
      '-' ||
      lpad(floor(random() * 10000)::text, 4, '0');
    
    -- Check if it exists
    SELECT COUNT(*) INTO exists_count
    FROM customers
    WHERE account_number = new_account_number;
    
    -- Exit loop if unique
    IF exists_count = 0 THEN
      EXIT;
    END IF;
  END LOOP;
  
  RETURN new_account_number;
END;
$$;


ALTER FUNCTION "public"."generate_account_number"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."generate_tracking_number"() RETURNS "text"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  new_tracking_number text;
  exists_count integer;
BEGIN
  LOOP
    -- Generate random tracking number
    new_tracking_number := 
      chr(65 + floor(random() * 26)::integer) || -- First letter
      chr(65 + floor(random() * 26)::integer) || -- Second letter
      chr(65 + floor(random() * 26)::integer) || -- Third letter
      chr(65 + floor(random() * 26)::integer) || -- Fourth letter
      lpad(floor(random() * 100000)::text, 5, '0'); -- 5 digits
    
    -- Check if it exists
    SELECT COUNT(*) INTO exists_count
    FROM items
    WHERE tracking_number = new_tracking_number;
    
    -- Exit loop if unique
    IF exists_count = 0 THEN
      EXIT;
    END IF;
  END LOOP;
  
  RETURN new_tracking_number;
END;
$$;


ALTER FUNCTION "public"."generate_tracking_number"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_users_email"() RETURNS TABLE("id" "uuid", "email" "text")
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'auth', 'public'
    AS $$
DECLARE
  current_user_id uuid;
  current_user_role text;
BEGIN
  -- Get current user ID
  current_user_id := auth.uid();
  
  -- Check if user is authenticated
  IF current_user_id IS NULL THEN
    RAISE EXCEPTION 'Authentication required';
  END IF;

  -- Get current user role with explicit table reference
  SELECT profiles.role INTO current_user_role
  FROM public.profiles
  WHERE profiles.id = current_user_id 
    AND profiles.active = true;

  -- Check if user has required role
  IF current_user_role IS NULL OR current_user_role NOT IN ('admin', 'write') THEN
    RAISE EXCEPTION 'Insufficient permissions';
  END IF;

  -- Return only active users with explicit table references
  RETURN QUERY
  SELECT DISTINCT ON (u.id)
    u.id,
    u.email::text
  FROM auth.users u
  INNER JOIN public.profiles p ON p.id = u.id
  WHERE u.deleted_at IS NULL
    AND p.active = true
  ORDER BY u.id, u.created_at DESC;

  -- Return empty set if no results
  IF NOT FOUND THEN
    RETURN;
  END IF;
END;
$$;


ALTER FUNCTION "public"."get_users_email"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."handle_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public', 'auth'
    AS $$
BEGIN
  INSERT INTO public.profiles (id, role)
  VALUES (NEW.id, 'write'::user_role)
  ON CONFLICT (id) DO NOTHING;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."handle_new_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."soft_delete_user"("user_id" "uuid") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public', 'auth'
    AS $$
BEGIN
  -- Check if the current user is an admin
  IF NOT EXISTS (
    SELECT 1 FROM public.profiles 
    WHERE id = auth.uid() 
    AND role = 'admin'
  ) THEN
    RAISE EXCEPTION 'Only administrators can delete users';
  END IF;

  -- Check if user exists
  IF NOT EXISTS (
    SELECT 1 FROM auth.users WHERE id = user_id
  ) THEN
    RAISE EXCEPTION 'User not found';
  END IF;

  -- Soft delete the profile
  UPDATE public.profiles
  SET active = false
  WHERE id = user_id;

  -- Set deleted_at in auth.users
  UPDATE auth.users
  SET deleted_at = now()
  WHERE id = user_id;
END;
$$;


ALTER FUNCTION "public"."soft_delete_user"("user_id" "uuid") OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."credit_cards" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "customer_id" "uuid" NOT NULL,
    "last_four" "text" NOT NULL,
    "card_type" "text" NOT NULL,
    "expiry_month" integer NOT NULL,
    "expiry_year" integer NOT NULL,
    "cardholder_name" "text" NOT NULL,
    "is_default" boolean DEFAULT false NOT NULL,
    "autopay_enabled" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "created_by" "uuid" NOT NULL,
    CONSTRAINT "valid_expiry_month" CHECK ((("expiry_month" >= 1) AND ("expiry_month" <= 12))),
    CONSTRAINT "valid_expiry_year" CHECK ((("expiry_year")::numeric >= EXTRACT(year FROM CURRENT_DATE)))
);


ALTER TABLE "public"."credit_cards" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."customers" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "account_number" "text" NOT NULL,
    "email" "text" NOT NULL,
    "address" "text" NOT NULL,
    "security_pin" "text" NOT NULL,
    "phone" "text" NOT NULL,
    "date_of_birth" "date" NOT NULL,
    "current_balance" numeric(10,2) DEFAULT 0 NOT NULL,
    "amount_due" numeric(10,2) DEFAULT 0 NOT NULL,
    "due_date" "date",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "created_by" "uuid" NOT NULL,
    "name" "text" DEFAULT ''::"text" NOT NULL,
    "active" boolean DEFAULT true NOT NULL
);


ALTER TABLE "public"."customers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."items" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "customer_id" "uuid" NOT NULL,
    "tracking_number" "text" NOT NULL,
    "status" "public"."item_status" DEFAULT 'pending_shipment'::"public"."item_status" NOT NULL,
    "delivery_date" "date",
    "price" numeric(10,2) DEFAULT 0 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "created_by" "uuid" NOT NULL,
    "name" "text" DEFAULT ''::"text" NOT NULL
);


ALTER TABLE "public"."items" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notes" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "customer_id" "uuid" NOT NULL,
    "content" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "created_by" "uuid" NOT NULL
);


ALTER TABLE "public"."notes" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "customer_id" "uuid" NOT NULL,
    "amount" numeric(10,2) NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "created_by" "uuid" NOT NULL
);


ALTER TABLE "public"."payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."profiles" (
    "id" "uuid" NOT NULL,
    "role" "public"."user_role" DEFAULT 'view'::"public"."user_role" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "active" boolean DEFAULT true
);


ALTER TABLE "public"."profiles" OWNER TO "postgres";


ALTER TABLE ONLY "public"."credit_cards"
    ADD CONSTRAINT "credit_cards_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_account_number_key" UNIQUE ("account_number");



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_email_key" UNIQUE ("email");



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."items"
    ADD CONSTRAINT "items_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."items"
    ADD CONSTRAINT "items_tracking_number_key" UNIQUE ("tracking_number");



ALTER TABLE ONLY "public"."notes"
    ADD CONSTRAINT "notes_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "profiles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."credit_cards"
    ADD CONSTRAINT "credit_cards_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."credit_cards"
    ADD CONSTRAINT "credit_cards_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("id");



ALTER TABLE ONLY "public"."customers"
    ADD CONSTRAINT "customers_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."items"
    ADD CONSTRAINT "items_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."items"
    ADD CONSTRAINT "items_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("id");



ALTER TABLE ONLY "public"."notes"
    ADD CONSTRAINT "notes_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."notes"
    ADD CONSTRAINT "notes_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("id");



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."profiles"("id");



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "profiles_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id");



CREATE POLICY "Credit cards are viewable by authenticated users" ON "public"."credit_cards" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Credit cards can be deleted by write users and admins" ON "public"."credit_cards" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Credit cards can be deleted through cascade" ON "public"."credit_cards" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Credit cards can be inserted by write users and admins" ON "public"."credit_cards" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Credit cards can be updated by write users and admins" ON "public"."credit_cards" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Customer status can be updated by write users and admins" ON "public"."customers" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"])) AND ("profiles"."active" = true)))));



CREATE POLICY "Customers are viewable by authenticated users" ON "public"."customers" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Customers can be deleted through cascade" ON "public"."customers" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Customers can be inserted by write users and admins" ON "public"."customers" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Customers can be updated by write users and admins" ON "public"."customers" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Customers can only be deleted by admins" ON "public"."customers" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"public"."user_role")))));



CREATE POLICY "Items are viewable by authenticated users" ON "public"."items" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Items can be deleted through cascade" ON "public"."items" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Items can be inserted by write users and admins" ON "public"."items" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Items can be updated by write users and admins" ON "public"."items" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Items can only be deleted by admins" ON "public"."items" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"public"."user_role")))));



CREATE POLICY "Notes are viewable by authenticated users" ON "public"."notes" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Notes can be deleted through cascade" ON "public"."notes" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Notes can be inserted by write users and admins" ON "public"."notes" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Notes can be updated by write users and admins" ON "public"."notes" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Notes can only be deleted by admins" ON "public"."notes" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"public"."user_role")))));



CREATE POLICY "Only show active profiles" ON "public"."profiles" FOR SELECT TO "authenticated" USING (("active" = true));



CREATE POLICY "Payments are viewable by authenticated users" ON "public"."payments" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Payments can be deleted through cascade" ON "public"."payments" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Payments can be inserted by write users and admins" ON "public"."payments" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = ANY (ARRAY['write'::"public"."user_role", 'admin'::"public"."user_role"]))))));



CREATE POLICY "Payments can only be deleted by admins" ON "public"."payments" FOR DELETE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."role" = 'admin'::"public"."user_role")))));



CREATE POLICY "Profiles are viewable by authenticated users" ON "public"."profiles" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Profiles can be managed by service role" ON "public"."profiles" TO "service_role" USING (true) WITH CHECK (true);



CREATE POLICY "Profiles can only be updated by admins" ON "public"."profiles" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles" "profiles_1"
  WHERE (("profiles_1"."id" = "auth"."uid"()) AND ("profiles_1"."role" = 'admin'::"public"."user_role")))));



ALTER TABLE "public"."credit_cards" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."customers" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."items" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."notes" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."payments" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."profiles" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";






GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";




















































































































































































GRANT ALL ON FUNCTION "public"."create_user_profile"("user_id" "uuid", "user_role" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."create_user_profile"("user_id" "uuid", "user_role" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_user_profile"("user_id" "uuid", "user_role" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."delete_user"("user_id" "uuid") TO "anon";
GRANT ALL ON FUNCTION "public"."delete_user"("user_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."delete_user"("user_id" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."generate_account_number"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_account_number"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_account_number"() TO "service_role";



GRANT ALL ON FUNCTION "public"."generate_tracking_number"() TO "anon";
GRANT ALL ON FUNCTION "public"."generate_tracking_number"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."generate_tracking_number"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_users_email"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_users_email"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_users_email"() TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."soft_delete_user"("user_id" "uuid") TO "anon";
GRANT ALL ON FUNCTION "public"."soft_delete_user"("user_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."soft_delete_user"("user_id" "uuid") TO "service_role";


















GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."credit_cards" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."credit_cards" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."credit_cards" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."customers" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."customers" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."customers" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."items" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."items" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."items" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."notes" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."notes" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."notes" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."payments" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."payments" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."payments" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."profiles" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."profiles" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."profiles" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO "service_role";






























\unrestrict rL0C0Gucw5bWxfS7W2ypeQ6ESCPNhrDw3tsgFLHV698bTCYtglSslV8f9eEZDlW

RESET ALL;
