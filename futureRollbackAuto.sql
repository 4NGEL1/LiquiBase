--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: dbchange6.xml
--  Ran at: 7/02/22 07:38 PM
--  Against: root@172.17.0.1@jdbc:mysql://localhost:3309/Curso
--  Liquibase version: 4.7.1
--  *********************************************************************

--  Lock Database
UPDATE Curso.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'CISCO-10P6IBD (192.168.1.67)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Rolling Back ChangeSet: dbchange6.xml::a7.3::activity.7
ALTER TABLE Curso.person_a7 DROP COLUMN country;

DELETE FROM Curso.DATABASECHANGELOG WHERE ID = 'a7.3' AND AUTHOR = 'activity.7' AND FILENAME = 'dbchange6.xml';

--  Rolling Back ChangeSet: dbchange6.xml::a7.2::activity.7
DROP TABLE Curso.company_a7;

DELETE FROM Curso.DATABASECHANGELOG WHERE ID = 'a7.2' AND AUTHOR = 'activity.7' AND FILENAME = 'dbchange6.xml';

--  Rolling Back ChangeSet: dbchange6.xml::a7.1::activity.7
DROP TABLE Curso.person_a7;

DELETE FROM Curso.DATABASECHANGELOG WHERE ID = 'a7.1' AND AUTHOR = 'activity.7' AND FILENAME = 'dbchange6.xml';

--  Release Database Lock
UPDATE Curso.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

