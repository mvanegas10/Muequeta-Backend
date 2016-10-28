SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "videos" (gid serial,
"idLugar" numeric,
"nombre" varchar(254),
"descripcion" varchar(254));
ALTER TABLE "videos" ADD PRIMARY KEY (gid);
INSERT INTO "videos" ("idLugar","nombre","descripcion") VALUES ('4','lugarMuseoDelOro3','VÃ­deo de aficionado en una exposiciÃ³n.');
INSERT INTO "videos" ("idLugar","nombre","descripcion") VALUES ('5','lugarMuseoNacional3','ExposiciÃ³n tierra como recurso.');
INSERT INTO "videos" ("idLugar","nombre","descripcion") VALUES ('6','lugarCerroMonserrate4','Cerro de Monserrate.');
INSERT INTO "videos" ("idLugar","nombre","descripcion") VALUES ('7','lugarTorreColpatria5','VÃ­deo de aficionado.');
INSERT INTO "videos" ("idLugar","nombre","descripcion") VALUES ('8','lugarCasaMoneda4','VÃ­deo de aficionado.');
INSERT INTO "videos" ("idLugar","nombre","descripcion") VALUES ('10','lugarCarreraSeptima4','VÃ­deo de aficionado.');
COMMIT;
ANALYZE "videos";
