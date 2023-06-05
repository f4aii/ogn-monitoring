--- create read-only user for grafana (frontend)
CREATE USER grafanareader WITH PASSWORD 'password';

GRANT USAGE ON SCHEMA public TO grafanareader;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO grafanareader;

--- create user for grafana (backend) and give complete access to database 'grafana'
CREATE USER grafana WITH PASSWORD 'password';

CREATE DATABASE grafana;
ALTER DATABASE grafana OWNER TO grafana;

--- create user for telegraf (backend) and give complete access to database 'telegraf'
CREATE USER telegraf WITH PASSWORD 'password';

CREATE DATABASE telegraf;
ALTER DATABASE telegraf OWNER TO telegraf;
