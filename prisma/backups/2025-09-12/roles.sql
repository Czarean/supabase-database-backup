
\restrict dOvgi4KsY3I7Cf7j6UUeafcTdqnlSaSK6mUJB9OFVbkeFv1iZ5PQ5T0dwguvSD0

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict dOvgi4KsY3I7Cf7j6UUeafcTdqnlSaSK6mUJB9OFVbkeFv1iZ5PQ5T0dwguvSD0

RESET ALL;
