#!/bin/bash
RESET='\033[0m'
TGREEN='\e[92m'
TRED='\e[91m'
TBLUE='\e[94m'
TYELLOW='\e[93m'
BGREEN='\e[42m'
BRED='\e[101m'
BBLUE='\e[44m'
BYELLOW='\e[43m'

cd /app 
if [! -f "artisan" ]
then
   echo -e "$BBLUE Laravel proyect not found. $RESET Creating a new one.\n\n"
   composer global require laravel/installer
   laravel new 
   echo -e "\n$BGREEN Project creation complete. Deleting Laravel installer. $RESET\n\n"
else 
   echo -e "$BGREEN Laravel project found!. $RESET Installing composer packages."
   composer install 
fi 

echo -e "$BBLUE Running migrations. \n\n $RESET"
php artisan migrate

echo -e "$BGREEN Starting Laravel Dev Environment.\n $RESET"
php artisan serve --host=0.0.0.0 --port=3000

