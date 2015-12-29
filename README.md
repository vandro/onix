ONIX CMS - AMDINISTRADOR DE CONTENIDOS BASADO EN YII2 FRAMEWORK
======================================================

Onix (sí, como el pokemon), es una base pensada para el desarrollo web, ya sean sitios informativos, e-commerce, portales etc., basado en muchas cosas ya existentes ya que aquí pensamos que no hay necesidad de reinventar la rueda.

Acerca del código: todo esta desarrollado teniendo como base la plantilla avanzada de Yii2 framework modificada para que se pueda adaptar a los la mayoría de las necesidades posibles con la menos cantidad de configuraciones, la cual separa por completo el backend del frontend, y se hizo de esta manera por que aparte de tener esas dos caras estamos trabajando en una tercera llamada API, la cual podrá ser instalada o no según las preferencias del usuario, y de la misma manera abrir una cantidad casi ilimitada de caminos al desarrollador.

Sin más que explicar por el momento, una breve explicación de la estructura básica, configuración e instalación de la base.

ESTRUCTURA DEL SISTEMA
----------------------
Lo primero que se va a ver al entrar a la raiz del proyecto serán dos carpetas y un archivos, 

- site/
- vendor/
- www/
- composer.json

En el directorio site/ esta el código base de la aplicación, el framework, módulos y absolutamente todo lo que tiene que ver con la programación base del backend, frontend etc., el directorio www es la carpeta pública, el equivalente al public_html o htdocs (dependiendo del serevidor), el archivo composer.json ya viene configurado para organizar todas las dependencias instaladas a través de composer, a menos que el usuario sepa lo que hace, este archivo no debe ser modificado bajo ninguna circunstancia.

El directorio vendor/ tiene todas las dependencias del proyecto (framework), librerías de terceros etc.

El directorio www/ es la carpeta pública del proyecto, equivalento a public_html/ o htdocs/ en algunos casos.

- Directorio site/
------------------

Como ya lo había mencionado antes, este directorio almacena todo lo que tiene que ver con el código base de la aplicación, su estructura es la siguiente:

- backend/
- common/
- console/
- environments/
- frontend/
- tests/


el directorio backend y frontend son muy similares, a excepción del directorio workbench/ (dentro de backend/), el cual contiene el archivo de la base de datos y los graficos del modelo base en formato .mwb (Mysql Workbench).

Teniendo claro lo anteriormente dicho una breve explicación de la estructura de ambos directorios, 

- config/ 

> Archivos de configuración para esta parte del sistema

- controllers/ 

> controladores del sistema

- models/ 

> modelos del sistema

- runtime/ 

> directorio usado para almacenar tareas del sistema

- themes/ 

> directorio que almacena los temas disponibles en el sistema

- widgets/ 

> directorio para almacenar los widgets del sistema


En caso de ser necesaria mas información acerca de los archivos contenidos aqui, consultar la documentación oficial de Yii2 acerca de la [plantilla avanzada](https://github.com/yiisoft/yii2-app-advanced/blob/master/docs/guide/README.md)

Regresando al directorio site/ queda una parte mas que explicar, la carpeta common/, la cual almacena las configuraciónes, clases, y demas archivos que comparten todas las partes del sistema, por ejemplo, configuración de base de datos, modelos y controladores, allí tambien hay algunos módulos y classes sobreescritas que luego van a ser movidas de allí, por ejemplo el mailer.


INSTALACIÓN DE LA BASE
========================

REQUERIMIENTOS DE LA INSTALACIÓN:

Composer, Git

INSTALACIÓN DEL SISTEMA

seguir los comandos en el siguiente orden (linux, mac):

1. composer global require "fxp/composer-asset-plugin:~1.1.1"
2. composer create-project --prefer-dist yiisoft/yii2-app-advanced yii-application
3. cd yii-application
3. git init
4. git remote add origin https://afsolarte@bitbucket.org/afsolarte/onixcms.git
5. git fetch
6. git checkout -t -f origin/master
7. Eliminar los siguientes elementos del directorio raiz
	--backend/
	--common/
	--console/
	--environments/
	--frontend/
	--init
	--init.bat
	--tests/
	--yii.bat
8. composer update (para actualizar las nuevas dependencias para el CMS)
9. importar la base de datos que se encuentra en el directorio app/backend/workbench/onixcms.sql
10. configurar los accesos de bd que estan en app/common/config/main-local.php, dejo un ejemplo de como debería verse la configuración:

'components' => [
        'db' => [
            'class'    => 'yii\db\Connection',
            'dsn'      => 'mysql:host=localhost;dbname=onix_base',
            'username' => 'onix',
            'password' => 'yo_te_elijo',
            'charset'  => 'utf8',
        ]
    ],


Para ver mas detalles de los parámetros de conexión a la base de datos consultar el [siguiente link](http://www.yiiframework.com/doc-2.0/yii-db-connection.html)

url frontend: http://localhost/onix_base/www
url backend: http://localhost/onix_base/www/admin

el administrador maneja un sistema de control de acceso basado en roles (RBAC) y estos ya vienen preconfigurados, por defecto son:

### Superadministrador:
    Usuario: superadmin
    Password: administrator

### Usuario Estándar:
    Usuario: user
    Password: admin

Y el proyecto ya esta listo para iniciar.

NOTA: Recuerde que cuando pasa a entorno de producción, ninguno de los archivos de configuración cuyo nombre termina en "-local.php" será cargado, esto con el objetivo de mantener las dos configuraciones siempre separadas, el paso a producción lo detecta automáticamente el sistema mediante la detección de la ip del cliente, si esta es 127.0.0.1 se asume que se encuentra en entorno local y va a mostrar todos los errores de php, excepciones de yii2 y activa el debugger.