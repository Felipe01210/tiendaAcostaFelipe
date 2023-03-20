SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

create database Librillos;

use Librillos;

grant all privileges on Librillos.* to 'felipe'@'%' identified by 'felipe';

create table usuario(
	id INT AUTO_INCREMENT,
	nombre varchar(30),
	apellidos varchar(30),
	password varchar(32),
	fecha_nac date,
	genero varchar(2),
	rol varchar(30),
	
	constraint pk_usuario primary key (id)
);

create table categoria(
	id INT AUTO_INCREMENT,
	name varchar(30),
	descripcion varchar(200),
	
	constraint pk_categoria primary key (id)
);

INSERT INTO categoria values (1, 'Juvenil', 'Libros para jovenes');
INSERT INTO categoria values (2, 'Infantil', 'Libros para los más pequeños');
INSERT INTO categoria values (3, 'Novela negra', 'Crimenes, misterios y secretos');
INSERT INTO categoria values (4, 'Terror', 'Relatos escalofriantes');
INSERT INTO categoria values (5, 'Academico', 'Ensayos y teorias de todos los temas');

create table libro(
	id INT AUTO_INCREMENT,
	titulo varchar(30),
	descripcion varchar(200),
	stock INT,
	price REAL,
	categoria INT,
	
	constraint pk_libro primary key (id),
	constraint fk_categoria foreign key (categoria) references categoria(id)
);

insert into libro (id, titulo, descripcion, stock, price, categoria) values (1, 'velit', 'Ut at dolor quis odio consequat varius.', 1, 60.4, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (2, 'proin', 'Nunc purus.', 2, 86.13, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (3, 'eu', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 3, 67.8, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (4, 'eu', 'Mauris sit amet eros.', 4, 76.35, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (5, 'tellus', 'Morbi porttitor lorem id ligula.', 5, 20.97, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (6, 'ipsum', 'Fusce consequat.', 6, 79.2, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (7, 'ultrices', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 7, 42.4, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (8, 'mauris', 'Nulla suscipit ligula in lacus.', 8, 82.26, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (9, 'erat', 'Aenean auctor gravida sem.', 9, 73.38, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (10, 'orci', 'Integer tincidunt ante vel ipsum.', 10, 86.45, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (11, 'consequat', 'Nam tristique tortor eu pede.', 11, 28.9, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (12, 'pellentesque', 'Maecenas ut massa quis augue luctus tincidunt.', 12, 6.19, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (13, 'varius', 'Fusce consequat.', 13, 71.59, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (14, 'mi', 'Morbi quis tortor id nulla ultrices aliquet.', 14, 98.29, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (15, 'ac', 'Curabitur convallis.', 15, 66.4, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (16, 'erat', 'In hac habitasse platea dictumst.', 16, 54.41, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (17, 'phasellus', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 17, 44.86, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (18, 'aliquam', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 18, 33.57, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (19, 'orci', 'Mauris sit amet eros.', 19, 74.01, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (20, 'condimentum', 'Duis at velit eu est congue elementum.', 20, 17.51, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (21, 'dolor', 'Duis at velit eu est congue elementum.', 21, 30.9, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (22, 'velit', 'Phasellus sit amet erat.', 22, 81.89, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (23, 'eu', 'Nullam varius.', 23, 19.43, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (24, 'feugiat', 'Nulla justo.', 24, 13.47, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (25, 'ut', 'Integer a nibh.', 25, 47.08, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (26, 'non', 'Etiam justo.', 26, 63.52, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (27, 'congue', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 27, 11.46, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (28, 'donec', 'Vestibulum ac est lacinia nisi venenatis tristique.', 28, 8.69, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (29, 'sed', 'Cras in purus eu magna vulputate luctus.', 29, 72.89, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (30, 'sapien', 'Pellentesque ultrices mattis odio.', 30, 93.93, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (31, 'ultrices', 'Sed sagittis.', 31, 22.28, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (32, 'nulla', 'Aenean fermentum.', 32, 84.23, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (33, 'et', 'Suspendisse ornare consequat lectus.', 33, 84.47, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (34, 'amet', 'Praesent id massa id nisl venenatis lacinia.', 34, 90.07, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (35, 'tellus', 'Curabitur gravida nisi at nibh.', 35, 87.66, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (36, 'in', 'In blandit ultrices enim.', 36, 15.97, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (37, 'nam', 'Nulla nisl.', 37, 72.18, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (38, 'ridiculus', 'Donec quis orci eget orci vehicula condimentum.', 38, 6.69, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (39, 'ut', 'Fusce consequat.', 39, 92.55, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (40, 'dictumst', 'Nulla tempus.', 40, 96.18, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (41, 'montes', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 41, 11.5, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (42, 'pede', 'In quis justo.', 42, 60.7, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (43, 'curae', 'Etiam pretium iaculis justo.', 43, 50.67, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (44, 'in', 'Vivamus tortor.', 44, 6.77, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (45, 'sed', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 45, 30.14, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (46, 'quis', 'Vivamus tortor.', 46, 30.44, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (47, 'mattis', 'Suspendisse potenti.', 47, 32.14, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (48, 'ligula', 'In sagittis dui vel nisl.', 48, 98.64, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (49, 'ante', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 49, 67.15, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (50, 'massa', 'Pellentesque at nulla.', 50, 70.81, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (51, 'montes', 'Mauris lacinia sapien quis libero.', 51, 64.77, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (52, 'id', 'Etiam faucibus cursus urna.', 52, 31.83, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (53, 'quis', 'Sed vel enim sit amet nunc viverra dapibus.', 53, 32.5, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (54, 'mus', 'Vivamus in felis eu sapien cursus vestibulum.', 54, 61.83, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (55, 'auctor', 'Aenean fermentum.', 55, 41.78, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (56, 'vel', 'Nunc rhoncus dui vel sem.', 56, 46.99, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (57, 'consectetuer', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 57, 54.98, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (58, 'vivamus', 'Aliquam non mauris.', 58, 23.31, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (59, 'ligula', 'Aliquam sit amet diam in magna bibendum imperdiet.', 59, 99.84, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (60, 'ac', 'Fusce posuere felis sed lacus.', 60, 7.02, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (61, 'non', 'Integer non velit.', 61, 6.19, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (62, 'orci', 'Nulla mollis molestie lorem.', 62, 96.04, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (63, 'amet', 'Proin eu mi.', 63, 6.11, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (64, 'nullam', 'Curabitur convallis.', 64, 65.63, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (65, 'libero', 'Vivamus tortor.', 65, 28.89, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (66, 'primis', 'Pellentesque eget nunc.', 66, 16.17, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (67, 'donec', 'Sed accumsan felis.', 67, 68.84, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (68, 'amet', 'Mauris lacinia sapien quis libero.', 68, 64.42, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (69, 'non', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 69, 54.27, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (70, 'ac', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 70, 32.98, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (71, 'vestibulum', 'Sed vel enim sit amet nunc viverra dapibus.', 71, 29.96, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (72, 'sed', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 72, 11.85, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (73, 'mauris', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 73, 64.03, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (74, 'mi', 'Aenean auctor gravida sem.', 74, 99.14, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (75, 'nulla', 'Vestibulum rutrum rutrum neque.', 75, 31.36, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (76, 'ac', 'In sagittis dui vel nisl.', 76, 85.0, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (77, 'vitae', 'Integer ac neque.', 77, 82.81, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (78, 'odio', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 78, 8.13, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (79, 'tellus', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 79, 17.59, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (80, 'amet', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 80, 36.32, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (81, 'aenean', 'Vestibulum sed magna at nunc commodo placerat.', 81, 30.22, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (82, 'vestibulum', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 82, 20.71, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (83, 'dapibus', 'Morbi non lectus.', 83, 38.41, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (84, 'proin', 'Duis at velit eu est congue elementum.', 84, 67.53, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (85, 'in', 'Sed ante.', 85, 95.07, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (86, 'sapien', 'Mauris ullamcorper purus sit amet nulla.', 86, 2.35, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (87, 'ac', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 87, 81.22, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (88, 'eu', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 88, 19.86, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (89, 'maecenas', 'Praesent blandit lacinia erat.', 89, 68.25, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (90, 'elit', 'Duis mattis egestas metus.', 90, 31.13, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (91, 'curae', 'Integer tincidunt ante vel ipsum.', 91, 99.43, 4);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (92, 'natoque', 'Sed ante.', 92, 8.9, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (93, 'erat', 'Vivamus in felis eu sapien cursus vestibulum.', 93, 70.42, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (94, 'sit', 'Vivamus vestibulum sagittis sapien.', 94, 91.83, 3);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (95, 'vivamus', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 95, 12.01, 5);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (96, 'et', 'Quisque ut erat.', 96, 14.71, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (97, 'tincidunt', 'Donec ut mauris eget massa tempor convallis.', 97, 93.22, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (98, 'aenean', 'In hac habitasse platea dictumst.', 98, 28.64, 1);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (99, 'tortor', 'Mauris ullamcorper purus sit amet nulla.', 99, 65.75, 2);
insert into libro (id, titulo, descripcion, stock, price, categoria) values (100, 'turpis', 'In blandit ultrices enim.', 100, 69.55, 5);

