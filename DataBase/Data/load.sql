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