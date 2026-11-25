-- =====================================================================
-- DATABASE BACKUP ASSIGNMENT
-- Submission file: answer.sql
-- Note: mysqldump is run from the system terminal, not the MySQL client.
-- By Ayom Leek
-- =====================================================================


-- =====================================================================
-- QUESTION 1: CREATING A COMPLETE DATABASE BACKUP (sales database)
-- =====================================================================

mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
--   mysqldump          : MySQL utility that creates a logical backup as a
--                        file of SQL statements (CREATE TABLE and INSERT)
--                        that can rebuild the database.
--   -u root            : connects to the MySQL server as the user "root".
--   -p                 : prompts for the password, so it is not typed in
--                        the command or stored in the terminal history.
--   sales              : the database being backed up.
--   > sales_backup.sql : redirects the output into the file
--                        sales_backup.sql instead of the screen.
--
-- Why regular database backups are important:
--   1. Protect against data loss from hardware failure, accidental
--      DROP/DELETE statements, or corruption.
--   2. Enable fast disaster recovery with minimal downtime.
--   3. Provide a rollback point if a schema change or update goes wrong.
--   4. Allow recovery from security incidents such as ransomware.
--   5. Support compliance requirements for keeping recoverable data.


-- =====================================================================
-- QUESTION 2: BACKING UP ALL DATABASES
-- =====================================================================

mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
--   mysqldump                  : the MySQL backup utility.
--   -u root                    : connects as the user "root".
--   -p                         : prompts for the password.
--   --all-databases            : exports every database on the server,
--                                including sales, with the CREATE DATABASE
--                                and USE statements for each one.
--   > all_databases_backup.sql : saves the output to all_databases_backup.sql.
--
-- Why backing up all databases is important before a server migration:
--   1. A migration moves the whole server, so every database must be
--      captured, not just one.
--   2. It is a safety net if data is lost or damaged during the move.
--   3. It gives one consistent snapshot of the entire server.
--   4. The new server can be restored in a single step.
--   5. It allows a rollback to the old server if problems appear.