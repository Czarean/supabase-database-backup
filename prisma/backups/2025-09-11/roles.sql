
\restrict qwhkTfqxDJQiVmIIYHbshQrjFXZvIDLI1Q3c7gV6o5OLpndmMEOxNnMD2pTVAMU

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict qwhkTfqxDJQiVmIIYHbshQrjFXZvIDLI1Q3c7gV6o5OLpndmMEOxNnMD2pTVAMU

RESET ALL;
