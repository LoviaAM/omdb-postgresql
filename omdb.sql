\i 00-drop-tables.sql
\i 10-country_codes.sql
\i 11-iso639.sql
\i 12-kind.sql
\i 13-schema.sql
\i 20-import.sql
\i 30-duplicates.sql
VACUUM;
\i 31-primary-keys.sql
\i 40-clean-orphans.sql
VACUUM;
\i 41-foreign-keys.sql
ANALYZE;
\i 50-views.sql
\i 51-purge_dirty.sql
\i 60-log.sql

CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE EXTENSION IF NOT EXISTS tsm_system_rows;
DO $$ BEGIN
  CREATE USER "www-data";
EXCEPTION WHEN duplicate_object THEN
END; $$ LANGUAGE plpgsql;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO "www-data";
GRANT INSERT ON access_log TO "www-data";
