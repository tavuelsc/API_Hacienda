## Sobre CRLibre
Somos una comunidad de individuos y organizaciones que voluntariamente unimos esfuerzos para colaborar y compartir conocimiento, crear software libre para resolver problemas que enfrentamos en nuestra realidad en Costa Rica.

En este repositorio estamos creando un [API](https://es.wikipedia.org/wiki/Interfaz_de_programaci%C3%B3n_de_aplicaciones "Interfaz de programación de aplicaciones, del inglés Application Programming Interface es un conjunto de subrutinas, funciones y procedimientos que ofrece una pieza de software para ser utilizado por otro software") **[libre](https://es.wikipedia.org/wiki/Software_libre "El software libre es todo programa informático cuyo código fuente puede ser estudiado, modificado, y utilizado libremente con cualquier fin y redistribuido con o sin cambios o mejoras")** y componentes de software para simplificar el proceso de la **Factura Electrónica** requerido por el Ministerio de Hacienda de Costa Rica.

### ¿Por qué un API para conectarse a los del Ministerio de Hacienda?
Para la [implementación de la Factura Electrónica](https://www.hacienda.go.cr/contenido/14350-factura-electronica), el Ministerio de Hacienda puso a disposición [documentación técnica e interfaces de programación sofisticados](https://tribunet.hacienda.go.cr/FormatosYEstructurasXML.jsp) que muchos programadores encuentran difíciles de comprender y utilizar. Nuestro objetivo es crear un software que simplifique el proceso a desarrolladores de cumplir con las [resoluciones del Ministerio](https://tribunet.hacienda.go.cr/docs/esquemas/2016/v4.2/ResolucionComprobantesElectronicosDGT-R-48-2016_4.2.pdf), de forma más ágil, desde cualquier lenguaje de programación y sin depender de intermediarios al poder instalar esta pieza de [software libre](https://es.wikipedia.org/wiki/Software_libre) en un servidor propio manteniendo control de sus datos sensibles.


## Cómo colaborar

* Póngase en contacto con los otros miembros voluntarios de la comunidad.
   * [Sistema de Preguntas y Respuestas de la Comunidad](https://crlibre.org/qa/)
   * [Grupos de CHAT de CRLibre.org](https://crlibre.org/chats/)
   * [Grupo de Facebook CRLibre](https://www.facebook.com/groups/105812240170199/)

## Sobre este API

**Trabajo en proceso [lo estamos creando en conjunto](CONTRIBUTING.md)**

Esta es un API en PHP, la idea de esto es poder realizar módulos sobre una base que maneja ya diferentes aspectos como la conexión a bases de datos y usuarios.

Se encuentran 2 directorios, un que se llama api y otro que se llama www

La que se llama api, debe ser ubicarla en un lugar en donde no sea accesible, o bien, que no sea en el public_html

La que se llama www contiene un archivo de configuración, en donde se modifican aspectos como la conexión a base de datos, nombre del sitio y muy importante, la ubicación de en donde se encontrará el resto de cosas o bien, la carpeta api.

## Requerimientos minimos
* PHP > 5.5.0
* MySQL o MariaDB
* Instalación librería curl
* Instalación php-xml
* Openssl

### Uso del API
* Ver y colaborar documentación en [wiki del API](https://github.com/CRLibre/API_Hacienda/wiki "Wiki CRLibre API_Hacienda")

#### Primeros Pasos
* [Primera petición al API](https://github.com/CRLibre/API_Hacienda/wiki/Primera-petici%C3%B3n-al-API)
* [Uso de Módulos del API](https://github.com/CRLibre/API_Hacienda/wiki/Uso-de-M%C3%B3dulos-del-API)
* [Creación de Usuario](https://github.com/CRLibre/API_Hacienda/wiki/Creaci%C3%B3n-de-Usuario)
* [Login y Logout del API](https://github.com/CRLibre/API_Hacienda/wiki/Login-y-Logout-del-API)

#### Uso de los módulos del API
* Upload del certificado o llave criptográfica
* Solicitud de Token
* Solicitud de refrescar token
* Creación de Clave para los XML de Factura Electrónica
* Creación de Clave para Nota de Crédito
* Creación de Clave para Nota de Débito
* Creación de clave para Mensaje Aceptación (Aceptación total, Parcialmente y Rechazo)
* Creación de xml Factura Electrónica
* Creación de xml Nota de Crédito
* Creación de xml Nota de Debito
* Firmado del xml Factura Electrónica
* Firmado del xml Nota de Crédito
* Firmado del xml Nota de Debito
* Firmado del xml Mensaje de Aceptación (Pendiente solucionar error)
* Envió a Hacienda del xml de Factura Electrónica, Notas de Crédito, Notas de Debito
* Envió a Hacienda del xml de Mensaje Aceptación (Aceptación total, Parcialmente y Rechazo)
* Consulta de estado de los comprobantes

