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

Primero que todo debe ser creada la base de datos en el servidor, para este ejemplo vamos a usar mysql con los siguientes datos:

servidor: localhost
base de datos: onix_base
usuario: onix
contaseña: yo_te_elijo

Una vez tengamos estos datos vamos a importar el sql base, este se encuentra en la carpeta site/backend/workbench, el archivo se llama cms-beta.sql, una vez importado se debe configurar la conexión en las configuraciónes del proyecto de esta manera: 

Abrir el archivo common/config/main.php ó common/config/main-local.php dependiendo si la aplicación se encuentra en entorno de desarrollo o producción ([mas información acerca de los entornos de desarrollo](http://www.yiiframework.com/doc-2.0/guide-concept-configurations.html#environment-constants))

Una vez allí dentro del arreglo 'components', se escriben los parámetros de conexión, en este caso se verían de la siguiente manera: 

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

Una vez configurada la base de datos debemos bajar las dependencias del proyecto, para este caso utilizamos composer, entonces, abrir la terminal o consola de comandos y ejecutar sobre el directorio raíz del proyecto "composer update" sin comillas, podremos ver como se van descargando las dependencias del proyecto, una vez terminado este proceso podeemos acceder a través del navegador, teniendo en cuenta que es un servidor local y la carpeta del proyecto se llama onix_base:

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