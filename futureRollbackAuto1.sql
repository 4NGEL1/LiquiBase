--  *********************************************************************
--  SQL to roll back currently unexecuted changes
--  *********************************************************************
--  Change Log: dbchange4.xml
--  Ran at: 7/02/22 07:39 PM
--  Against: root@172.17.0.1@jdbc:mysql://localhost:3309/Curso
--  Liquibase version: 4.7.1
--  *********************************************************************

--  Lock Database
UPDATE Curso.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'CISCO-10P6IBD (192.168.1.67)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Rolling Back ChangeSet: dbchange4.xml::2::bob
DROP TABLE Curso.CUSTOMER;

DELETE FROM Curso.DATABASECHANGELOG WHERE ID = '2' AND AUTHOR = 'bob' AND FILENAME = 'dbchange4.xml';

--  Rolling Back ChangeSet: dbchange4.xml::1::bob
DROP TABLE Curso.department;

DELETE FROM Curso.DATABASECHANGELOG WHERE ID = '1' AND AUTHOR = 'bob' AND FILENAME = 'dbchange4.xml';

--  Release Database Lock
UPDATE Curso.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

