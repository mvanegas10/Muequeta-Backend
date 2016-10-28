SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "imagenes" (gid serial,
"idLugar" numeric,
"nombre" varchar(254),
"descripcion" varchar(254));
ALTER TABLE "imagenes" ADD PRIMARY KEY (gid);
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('1','lugarPalacio1','Palacio de justicia en la actualidad');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('1','lugarPalacio2','Palacio de justicia en la actualidad');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes1','Edificio Mario Laserna.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes2','Prado de San Alberto Magno en la actualidad');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes3','Campito de San JosÃ© en 1972');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes4','Pasillos del campito de San JosÃ© en 1972.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes5','Villa Paulina en 1972.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes6','Avenida de Los Pinos, uno de los principales corredores de la Universidad en sus inicios, ubicada junto al actual Prado de San Alberto Magno.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes7','Biblioteca de la Universidad de los Andes en los aÃ±os 60. En esa dÃ©cada se construyÃ³ tambiÃ©n el edificio William McCarthy, actual Bloque J.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes8','En los aÃ±os 50, luego de que la Universidad lograra equilibrar sus instalaciones disponibles y las necesarias, se emprendieron nuevas reformas y adiciones para ampliar el campus. En la foto se observa una sala de lectura y trabajo de la Ã©poca.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes9','Bloque B, construido entre los siglos XVIII  y XX, fue utilizado como pabellÃ³n para la antigua cÃ¡rcel del Buen Pastor. En 1976 tuvo un reacondicionamiento y en 1996 tuvo una intervenciÃ³n total debido a su avanzado deterioro');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes10','Bloque D, La Piscina, CafeterÃ­a Central y Bloque O (edificio Henry Yerly) durante los aÃ±os 80.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes11','Bloque J, fue donado en los aÃ±os 50 por William McCarthy y la FundaciÃ³n Rockefeller a la Universidad. En 2004, debido a fallas estructurales, fue intervenido arquitectÃ³nicamente y adaptado para las necesidades del Departamento de Ciencias BiolÃ³gicas.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('2','lugarUniAndes12','Antigua cafeterÃ­a central.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('3','lugaresMuseoBotero1','Vista sur del museo del oro.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('3','lugaresMuseoBotero2','Galeria de Arte del museo de Botero.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('4','lugarMuseoDelOro1','Vista frontal del museo del oro.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('4','lugarMuseoDelOro2','Balsa muisca');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('5','lugarMuseoNacional1','Fachada del Museo Nacional');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('5','lugarMuseoNacional2','CaÃ±on en el museo nacional.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('6','lugarCerroMonserrate1','BasÃ­lica del SeÃ±or de Monserrate.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('6','lugarCerroMonserrate2','Peregrinos en la construcciÃ³n de la BasÃ­lica del SeÃ±or de Monserrate en los aÃ±os 20.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('6','lugarCerroMonserrate3','NiÃ±os en camino Calvario, aÃ±os 70.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('7','lugarTorreColpatria1','Torre colpatria en la noche mostrando la bandera de Colombia.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('7','lugarTorreColpatria2','Vista lejana de la torre.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('7','lugarTorreColpatria3','ConstrucciÃ³n de la Torre Colpatria.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('7','lugarTorreColpatria4','ConstrucciÃ³n de la Torre Colpatria.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('8','lugarCasaMoneda1','Casa de la Moneda. Vista al patio');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('8','lugarCasaMoneda2','Fachada de la Casa de la Moneda');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('8','lugarCasaMoneda3','ExposiciÃ³n en la Casa de la Moneda.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('9','lugarPlazaBolivar1','Plaza de BolÃ­var en los 20.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('9','lugarPlazaBolivar2','Antigua Plaza de BolÃ­var.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('9','lugarPlazaBolivar3','Plaza Mayor en 1846.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('9','lugarPlazaBolivar4','Plaza de BolÃ­var en los aÃ±os 50.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('10','lugarCarreraSeptima1','Carrera sÃ©ptima con calle 22.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('10','lugarCarreraSeptima2','Paso del ferrocarril por la antigua carrera sÃ©ptima.');
INSERT INTO "imagenes" ("idLugar","nombre","descripcion") VALUES ('10','lugarCarreraSeptima3','Paso del ferrocarril por la antigua carrera sÃ©ptima, 1927.');
COMMIT;
ANALYZE "imagenes";
