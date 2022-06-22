-- Generado por Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   en:        2022-06-22 00:05:45 CST
--   sitio:      SQL Server 2012
--   tipo:      SQL Server 2012



CREATE TABLE AlternativeAttribute 
    (
     id INTEGER NOT NULL , 
     name VARCHAR (100) 
    )
GO

ALTER TABLE AlternativeAttribute ADD CONSTRAINT AlternativeAttribute_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE AlternativeTitle 
    (
     id INTEGER NOT NULL , 
     titleId INTEGER NOT NULL , 
     regionId INTEGER NOT NULL , 
     languageId INTEGER NOT NULL , 
     alternativeTypeId INTEGER NOT NULL , 
     alternativeAttributeId INTEGER NOT NULL , 
     title VARCHAR (100) , 
     ordering VARCHAR (100) , 
     isOriginal VARCHAR (100) 
    )
GO

ALTER TABLE AlternativeTitle ADD CONSTRAINT AlternativeTitle_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE AlternativeType 
    (
     id INTEGER NOT NULL , 
     name VARCHAR (100) NOT NULL 
    )
GO

ALTER TABLE AlternativeType ADD CONSTRAINT AlternativeType_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Category 
    (
     id INTEGER NOT NULL , 
     name VARCHAR (100) 
    )
GO

ALTER TABLE Category ADD CONSTRAINT Category_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Director 
    (
     nameId INTEGER NOT NULL , 
     titleId INTEGER NOT NULL 
    )
GO

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

CREATE TABLE KnowForTitle 
    (
     nameId INTEGER NOT NULL , 
     titleId INTEGER NOT NULL 
    )
GO

CREATE TABLE Language 
    (
     id INTEGER NOT NULL , 
     name VARCHAR (100) 
    )
GO

ALTER TABLE Language ADD CONSTRAINT TABLE_4_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Name 
    (
     id INTEGER NOT NULL , 
     primeryName VARCHAR (100) , 
     birthYear DATE , 
     deathYear DATE 
    )
GO

ALTER TABLE Name ADD CONSTRAINT Name_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE NameProfession 
    (
     nameId INTEGER NOT NULL , 
     professionId INTEGER NOT NULL 
    )
GO

CREATE TABLE Principal 
    (
     id INTEGER NOT NULL , 
     nameId INTEGER NOT NULL , 
     titleId INTEGER NOT NULL , 
     categoryId INTEGER NOT NULL , 
     jobId INTEGER , 
     "order" INTEGER , 
     character VARCHAR (100) 
    )
GO

ALTER TABLE Principal ADD CONSTRAINT Principal_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Profession 
    (
     id INTEGER NOT NULL , 
     name VARCHAR (100) 
    )
GO

ALTER TABLE Profession ADD CONSTRAINT Profession_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Rating 
    (
     id INTEGER NOT NULL , 
     titleId INTEGER NOT NULL , 
     averageRating INTEGER , 
     numVotes INTEGER 
    )
GO

ALTER TABLE Rating ADD CONSTRAINT Rating_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Region 
    (
     id INTEGER NOT NULL , 
     name VARCHAR (100) 
    )
GO

ALTER TABLE Region ADD CONSTRAINT Region_PK PRIMARY KEY CLUSTERED (id)
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

CREATE TABLE Writer 
    (
     nameId INTEGER NOT NULL , 
     titleId INTEGER NOT NULL 
    )
GO

ALTER TABLE AlternativeTitle 
    ADD CONSTRAINT alternativeAttributeId FOREIGN KEY 
    ( 
     alternativeAttributeId
    ) 
    REFERENCES AlternativeAttribute 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE AlternativeTitle 
    ADD CONSTRAINT alternativeTypeId FOREIGN KEY 
    ( 
     alternativeTypeId
    ) 
    REFERENCES AlternativeType 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Principal 
    ADD CONSTRAINT categoryId FOREIGN KEY 
    ( 
     categoryId
    ) 
    REFERENCES Category 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
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

ALTER TABLE AlternativeTitle 
    ADD CONSTRAINT languageId FOREIGN KEY 
    ( 
     languageId
    ) 
    REFERENCES Language 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE NameProfession 
    ADD CONSTRAINT nameId FOREIGN KEY 
    ( 
     nameId
    ) 
    REFERENCES Name 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Writer 
    ADD CONSTRAINT nameIdv1 FOREIGN KEY 
    ( 
     nameId
    ) 
    REFERENCES Name 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Director 
    ADD CONSTRAINT nameIdv2 FOREIGN KEY 
    ( 
     nameId
    ) 
    REFERENCES Name 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE KnowForTitle 
    ADD CONSTRAINT nameIdv3 FOREIGN KEY 
    ( 
     nameId
    ) 
    REFERENCES Name 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Principal 
    ADD CONSTRAINT nameIdv4 FOREIGN KEY 
    ( 
     nameId
    ) 
    REFERENCES Name 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE NameProfession 
    ADD CONSTRAINT professionId FOREIGN KEY 
    ( 
     professionId
    ) 
    REFERENCES Profession 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE AlternativeTitle 
    ADD CONSTRAINT regionId FOREIGN KEY 
    ( 
     regionId
    ) 
    REFERENCES Region 
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

ALTER TABLE AlternativeTitle 
    ADD CONSTRAINT titleIdv1 FOREIGN KEY 
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

ALTER TABLE Rating 
    ADD CONSTRAINT titleIdv3 FOREIGN KEY 
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

ALTER TABLE Writer 
    ADD CONSTRAINT titleIdv4 FOREIGN KEY 
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

ALTER TABLE Director 
    ADD CONSTRAINT titleIdv5 FOREIGN KEY 
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

ALTER TABLE KnowForTitle 
    ADD CONSTRAINT titleIdv6 FOREIGN KEY 
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

ALTER TABLE Principal 
    ADD CONSTRAINT titleIdv7 FOREIGN KEY 
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
