
\restrict 91akQJijFJ1oIIq3Q4JshCbMf6Qfv6YnFnoLfFIUHDEKqbsyB7LrX71bQcuMpaQ

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict 91akQJijFJ1oIIq3Q4JshCbMf6Qfv6YnFnoLfFIUHDEKqbsyB7LrX71bQcuMpaQ

RESET ALL;
