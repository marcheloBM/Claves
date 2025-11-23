BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "login" (
	"idLogin"	INTEGER,
	"rut"	INTEGER,
	"nombre"	TEXT,
	"apellido"	TEXT,
	"correo"	TEXT,
	"password"	TEXT,
	"preguntaSecreta"	TEXT,
	"respuestaSecreta"	TEXT,
	"ClaveSecreta"	TEXT,
	"cambioPass"	TEXT,
	PRIMARY KEY("idLogin" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "claves" (
    "idClaves" INTEGER PRIMARY KEY AUTOINCREMENT,
    "nombre" TEXT,
    "pag" TEXT,
    "usuario" TEXT,
    "pass" TEXT,
    "fechaInsert" TEXT,
    "fechaUpdate" TEXT,
    "idLogin" INTEGER,
    FOREIGN KEY("idLogin") REFERENCES "login"("idLogin")
);
COMMIT;
