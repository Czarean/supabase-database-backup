
\restrict HoWsDNj7K3uf5exF5s03ypv79iQ1RQgQlsvfrWKNZ9fngm3kPL8YfjWhtBAErFg

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict HoWsDNj7K3uf5exF5s03ypv79iQ1RQgQlsvfrWKNZ9fngm3kPL8YfjWhtBAErFg

RESET ALL;
