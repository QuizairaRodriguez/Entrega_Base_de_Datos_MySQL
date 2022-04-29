/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Creación de la Base de Datos

DROP DATABASE IF EXISTS text_notes_qr;
CREATE DATABASE text_notes_qr;
USE text_notes_qr;

-- Estructura de la Tabla para la Tabla 'usuarios'

DROP TABLE IF EXISTS usuarios;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE usuarios(
  id_usuario INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) COLLATE utf8_unicode_ci NOT NULL,
  email VARCHAR(45) COLLATE utf8_unicode_ci NOT NULL UNIQUE, 
  PRIMARY KEY (id_usuario)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Datos de la Tabla 'usuarios'

LOCK TABLES usuarios WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO usuarios VALUES (1,'Quizaira','kiss02andre@gmail.com'),
(2,'Daniel','danielrojash19@gmail.com'),
(3,'Camila','cami123@gmail.com'),
(4,'Luisa','lu_lopez@hotmail.com'),
(5,'Lucas','lucas_s@hotmail.com'),
(6,'Raiza','rapico72@gmail.com'),
(7,'Gustavo','gustavo.n@gmail.com'),
(8,'Thaymara','thay_c@hotmail.com'),
(9,'Patricia','patog@gmail.com'),
(10,'Jesús','jrodriguez@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

-- Estructura de la Tabla para la Tabla 'gestiones'

DROP TABLE IF EXISTS gestiones;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE gestiones(
  id_gestion INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  estado VARCHAR(45) COLLATE utf8_unicode_ci NOT NULL,
  fecha DATETIME NOT NULL,
  nota_id INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (id_gestion),
  KEY gestiones_nota_id_foreign (nota_id),
  CONSTRAINT gestiones_nota_id_foreign FOREIGN KEY (nota_id) REFERENCES notas (id_nota)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Datos de la Tabla 'gestiones'

LOCK TABLES gestiones WRITE;
/*!40000 ALTER TABLE `gestiones` DISABLE KEYS */;
INSERT INTO gestiones VALUES (1,'Creada','2022-04-06 00:00:00',1),
(2,'Creada','2022-04-06 00:00:00',2),
(3,'Creada','2022-04-06 00:00:00',3),
(4,'Creada','2022-04-06 00:00:00',4),
(5,'Creada','2022-04-06 00:00:00',5),
(6,'Creada','2022-04-06 00:00:00',6),
(7,'Creada','2022-04-06 00:00:00',7),
(8,'Creada','2022-04-06 00:00:00',8),
(9,'Creada','2022-04-06 00:00:00',9),
(10,'Creada','2022-04-06 00:00:00',10);
/*!40000 ALTER TABLE `gestiones` ENABLE KEYS */;
UNLOCK TABLES;

-- Estructura de la Tabla para la Tabla 'notas'

DROP TABLE IF EXISTS notas;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE notas(
  id_nota INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) COLLATE utf8_unicode_ci NOT NULL,
  fecha_creacion DATETIME NOT NULL,
  fecha_ultima_modificacion DATETIME DEFAULT NULL,
  descripcion TEXT NOT NULL,
  opcion_de_eliminacion TINYINT NOT NULL,
  usuario_id INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (id_nota),
  KEY notas_usuario_id_foreign (usuario_id),
  CONSTRAINT notas_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Datos de la Tabla 'notas'

LOCK TABLES notas WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO notas VALUES (1,'Avanzar con el proyecto','2022-04-06 00:00:00',NULL,'Terminar los requerimientos solicitados para el Sprint 5',1,1),
(2,'Ir a hacer las compras','2022-04-06 00:00:00',NULL,'No olvidar comprar usos personales esta vez',1,2),
(3,'I Parcial','2022-04-06 00:00:00',NULL,'I Parcial 29 de Abril a las 14:00hs en el aula 402',1,3),
(4,'Subir la entrega de Base de Datos','2022-04-06 00:00:00',NULL,'No olvidar subir al GitHub el diagrama relacional en formato PDF',1,4),
(5,'Pagar los servicios','2022-04-06 00:00:00',NULL,'No olvidar pagar los servicios antes del viernes 08 de Abril',1,5),
(6,'Llevar mascota al veterinario','2022-04-06 00:00:00',NULL,'No olvidar llevar a Coffee el viernes 08 de Abril a las 12:00hs',1,6),
(7,'Comprar entradas para Animales Fantásticos','2022-04-06 00:00:00',NULL,'Comprar las entradas en Cine Hoyts con descuento de Club Personal',1,7),
(8,'Planificación semana 15','2022-04-06 00:00:00',NULL,'Realizar la planificación de los equipos que conforman la flota de Livianos',1,8),
(9,'Envió de remesas','2022-04-06 00:00:00',NULL,'Enviar remesas a mis padres antes del 11 de Abril por Wester',1,9),
(10,'Creación de LinkedIn','2022-04-06 00:00:00',NULL,'Crear la cuenta y mi perfil profesional',1,10);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

-- Estructura de la Tabla para la Tabla 'nota_categoria'

DROP TABLE IF EXISTS nota_categoria;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE nota_categoria (
  id_nota_categoria INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  nota_id INT(10) UNSIGNED NOT NULL,
  categoria_id INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (id_nota_categoria),
  KEY nota_categoria_nota_id_foreign (nota_id),
  KEY nota_categoria_categoria_id_foreign (categoria_id),
  CONSTRAINT nota_categoria_nota_id_foreign FOREIGN KEY (nota_id) REFERENCES notas (id_nota),
  CONSTRAINT nota_categoria_categoria_id_foreign FOREIGN KEY (categoria_id) REFERENCES categorias (id_categoria)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Datos de la Tabla 'nota_categoria'

LOCK TABLES nota_categoria WRITE;
/*!40000 ALTER TABLE `nota_categoria` DISABLE KEYS */;
INSERT INTO nota_categoria VALUES (1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10);
/*!40000 ALTER TABLE `nota_categoria` ENABLE KEYS */;
UNLOCK TABLES;

-- Estructura de la Tabla para la Tabla 'categorias'

DROP TABLE IF EXISTS categorias;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE categorias (
  id_categoria INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  tipo_de_categoria VARCHAR(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (id_categoria)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Datos de la Tabla 'categorias'

LOCK TABLES categorias WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO categorias VALUES (1,'Recordatorio'),
(2,'Recordatorio'),
(3,'Recordatorio'),
(4,'Recordatorio'),
(5,'Gastos'),
(6,'Recordatorio'),
(7,'Gastos'),
(8,'Trabajo'),
(9,'Gastos'),
(10,'Trabajo');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;