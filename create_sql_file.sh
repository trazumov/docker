function CreateDB {
	local db=$(grep MARIADB_DATABASE  srcs/.env | cut -d= -f2)
	echo "CREATE DATABASE IF NOT EXISTS $db;" > settings.sql
}

function CreateUser {
	local user=$(grep MARIADB_USER  srcs/.env | cut -d= -f2)
	local pass=$(grep MARIADB_PASSWORD  srcs/.env | cut -d= -f2)
	echo "CREATE USER IF NOT EXISTS '$user'@'%' IDENTIFIED BY '$pass';" >> settings.sql
}

function Grand {
	local db=$(grep MARIADB_DATABASE  srcs/.env | cut -d= -f2)
	local user=$(grep MARIADB_USER  srcs/.env | cut -d= -f2)
	local pass=$(grep MARIADB_PASSWORD  srcs/.env | cut -d= -f2)
	echo "GRANT ALL PRIVILEGES ON $db.* TO '$user'@'%' IDENTIFIED BY '$pass';" >> settings.sql
}

function CreateRoot {
	local admin=$(grep MARIADB_ADMIN_NAME  srcs/.env | cut -d= -f2)
	local pass=$(grep MARIADB_ROOT_PASSWORD  srcs/.env | cut -d= -f2)
	echo "ALTER USER '$admin'@'localhost' IDENTIFIED BY '$pass';" >> settings.sql
}
function Flush {
	echo "FLUSH PRIVILEGES;" >> settings.sql
}

CreateDB
CreateUser
Grand
CreateRoot
Flush