
\restrict 0LQHUYTvF0p23aN8WlUagec3AK76xuYvXEILywxbDuWglvUQ36OjDayfokq2b5T

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict 0LQHUYTvF0p23aN8WlUagec3AK76xuYvXEILywxbDuWglvUQ36OjDayfokq2b5T

RESET ALL;
