-- Create our database and schemas
CREATE OR REPLACE DATABASE DEMO_DBT;

-- Set up permissions to role `transform`
GRANT ALL ON DATABASE DEMO_DBT to ROLE transform;
GRANT ALL ON ALL SCHEMAS IN DATABASE DEMO_DBT to ROLE transform;
GRANT ALL ON FUTURE SCHEMAS IN DATABASE DEMO_DBT to ROLE transform;