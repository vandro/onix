<?php

echo "Bienvenido al instalador del Onix<br/>";

if(!file_exists(__DIR__.'/vendor/autoload.php')){
	echo "ERROR: primero debe actualizar composer corriendo el comando 'composer update' sin comillas<br/>";
}