-- Generado por Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   en:        2022-06-22 00:05:45 CST
--   sitio:      SQL Server 2012
--   tipo:      SQL Server 2012


CREATE TABLE Episode 
    (
     id INTEGER NOT NULL , 
     titleId INTEGER NOT NULL , 
     season VARCHAR (100) , 
     episode VARCHAR (100) 
    )
GO

ALTER TABLE Episode ADD CONSTRAINT Episode_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Genre 
    (
     id INTEGER NOT NULL , 
     name VARCHAR (100) 
    )
GO

ALTER TABLE Genre ADD CONSTRAINT Genre_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO


CREATE TABLE Title 
    (
     id INTEGER NOT NULL , 
     primaryTitle VARCHAR (100) , 
     originalTitle VARCHAR (100) , 
     isAdult VARCHAR (10) , 
     startYear DATE , 
     endYear DATE , 
     runtime TIME , 
     TitleTypeId INTEGER NOT NULL 
    )
GO

ALTER TABLE Title ADD CONSTRAINT Title_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE TitleGenre 
    (
     titleId INTEGER NOT NULL , 
     genreId INTEGER NOT NULL 
    )
GO

CREATE TABLE TitleType 
    (
     id INTEGER NOT NULL , 
     name VARCHAR (100) 
    )
GO

ALTER TABLE TitleType ADD CONSTRAINT TitleType_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO


ALTER TABLE TitleGenre 
    ADD CONSTRAINT genreId FOREIGN KEY 
    ( 
     genreId
    ) 
    REFERENCES Genre 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE TitleGenre 
    ADD CONSTRAINT titleId FOREIGN KEY 
    ( 
     titleId
    ) 
    REFERENCES Title 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Episode 
    ADD CONSTRAINT titleIdv2 FOREIGN KEY 
    ( 
     titleId
    ) 
    REFERENCES Title 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO


ALTER TABLE Title 
    ADD CONSTRAINT titleTypeId FOREIGN KEY 
    ( 
     TitleTypeId
    ) 
    REFERENCES TitleType 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            19
-- CREATE INDEX                             0
-- ALTER TABLE                             35
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
