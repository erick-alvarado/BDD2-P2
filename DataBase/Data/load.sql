insert into Genre values (1, 'accion');
insert into Genre values (2, 'misterio');
insert into Genre values (3, 'suspenso');
insert into Genre values (4, 'romance');
insert into Genre values (5, 'comedia');

insert into TitleType values (1, 'pelicula');
insert into TitleType values (2, 'serie');

insert into Title values (1,'El rey leon','The Lion King','no','12/12/2002','12/12/2003','03:20:00',1);
insert into Title values (2,'El juego del miedo','Saw','si','10/12/2002','10/12/2003','02:20:00',1);
insert into Title values (3,'Matrix','Matrix','no','11/12/2005','11/12/2005','03:00:00',1);
insert into Title values (4,'Pinocho','Pinocho','no','02/02/2010','03/03/2011','01:20:00',1);
insert into Title values (5,'Como conoci a tu madre','How i met your mother','si','09/10/2010','09/11/2011','01:20:00',2);
insert into Title values (6,'Juego de Tronos','Game of Thrones','si','09/10/2009','06/11/2011','09:20:00',2);
insert into Title values (7,'Chernobyl','Chernobyl','si','09/10/2008','09/09/2009','05:20:00',2);
insert into Title values (8,'Dos hombres y medio','two and the half men','si','09/10/1996','09/11/2000','12:20:00',2);
insert into Title values (9,'Cosas extrañas','Stranger things','si','05/01/2019','09/11/2022','22:20:00',2);
insert into Title values (10,'La oficina','The Office','si','09/10/2006','09/11/2011','01:20:00',2);

------------------------------
--REGION
insert into Region values (1, 'Centro America');
insert into Region values (2, 'Norte America');
insert into Region values (3, 'Sur America');
insert into Region values (4, 'Asia');
insert into Region values (5, 'Europa');

--LANGUAGE
insert into Language values (1, 'Español');
insert into Language values (2, 'Ingles');
insert into Language values (3, 'Portugues');
insert into Language values (4, 'Aleman');
insert into Language values (5, 'Frances');


--ALTERNATIVETYPE
insert into AlternativeType values (1, 'Documental');
insert into AlternativeType values (2, 'Reallity');

--ALTERNATIVEATTRIBUTE
insert into AlternativeAttribute values (1, 'Stereo');
insert into AlternativeAttribute values (2, '3D');




insert into Title values (1,1,1,1,1,1,'Rey de la selva',);
insert into Title values (2,2,2,2,2,2,'miedo al jugar',);
insert into Title values (3,3,3,3,1,1,'El matrix',);
insert into Title values (4,4,4,4,2,2,'El mentiroso',);
insert into Title values (5,5,5,5,1,1,'Conci a alguien pero no funciono',);
insert into Title values (6,6,1,1,2,2,'Guerra de castas','Game of Thrones',);
insert into Title values (7,7,2,2,1,1,'La infección','Chernobyl',);
insert into Title values (8,8,3,3,2,2,'Tio Charlie','two and the half men',);
insert into Title values (9,9,4,4,1,1,'Cosas de otro mundo','Stranger things',);
insert into Title values (10,10,5,5,2,2,'El trabajo','The Office',);
  
       
      
      ,[ordering]
      ,[isOriginal]
      FROM [IMDB].[dbo].[AlternativeTitle]


insert into TitleGenre values (1,2)
insert into TitleGenre values (1,5)
insert into TitleGenre values (2,2)
insert into TitleGenre values (2,3)
insert into TitleGenre values (3,1)
insert into TitleGenre values (3,2)
insert into TitleGenre values (4,5)
insert into TitleGenre values (5,5)


insert into Episode values (1,5, 1,1)
insert into Episode values (2,5, 1,2)
insert into Episode values (3,5, 1,3)
insert into Episode values (4,5, 1,4)
insert into Episode values (5,5, 1,5)

select * from Episode