#!/bin/sh

cd /Users/app/Desktop/ShellProject

echo "\nTest 1 /bin/sh modify.sh -u example \n"
/bin/sh modify.sh -u example

echo "\nTest 2 /bin/sh modify.sh -l example \n"
/bin/sh modify.sh -l example

echo "\nTest 3 /bin/sh modify.sh -u example example1 example2\n"
/bin/sh modify.sh -u example example1 example2

echo "\nTest 4 /bin/sh modify.sh -l example example1 example2\n"
/bin/sh modify.sh -l example example1 example2

echo "\nTest 5 /bin/sh modify.sh -r -u example\n "
/bin/sh modify.sh -r -u example

echo "\nTest 6 /bin/sh modify.sh -r -l example \n"
/bin/sh modify.sh -r -l example

echo "\nTest 7 /bin/sh modify.sh -r -u example example1 example2\n"
/bin/sh modify.sh -r -u example example1 example2

echo "\nTest 8 /bin/sh modify.sh -r -l example example1 example2\n"
/bin/sh modify.sh -r -l example example1 example2


echo "\n##############################################\n"
echo "########Test another path dirrectory##########"
echo "\n##############################################\n"

echo "\nTest 9 /bin/sh modify.sh -u /Users/app/Desktop/eopsy/example \n"
/bin/sh modify.sh -u /Users/app/Desktop/eopsy/example

echo "\nTest 10 /bin/sh modify.sh -l /Users/app/Desktop/eopsy/example \n"
/bin/sh modify.sh -l /Users/app/Desktop/eopsy/example

echo "\nTest 11 /bin/sh modify.sh -u /Users/app/Desktop/eopsy/example /Users/app/Desktop/eopsy/example1 /Users/app/Desktop/eopsy/example2\n"
/bin/sh modify.sh -u /Users/app/Desktop/eopsy/example /Users/app/Desktop/eopsy/example1 /Users/app/Desktop/eopsy/example2

echo "\nTest 12 /bin/sh modify.sh -l /Users/app/Desktop/eopsy/example /Users/app/Desktop/eopsy/example1 /Users/app/Desktop/eopsy/example2\n"
/bin/sh modify.sh -l /Users/app/Desktop/eopsy/example /Users/app/Desktop/eopsy/example1 /Users/app/Desktop/eopsy/example2


echo "\nTest 13 /bin/sh modify.sh -r -u /Users/app/Desktop/eopsy/example\n"
/bin/sh modify.sh -r -u /Users/app/Desktop/eopsy/example

echo "\nTest 14 /bin/sh modify.sh -r -l /Users/app/Desktop/eopsy/example\n"
/bin/sh modify.sh -r -l /Users/app/Desktop/eopsy/example

echo "\nTest 15 /bin/sh modify.sh -r -u /Users/app/Desktop/eopsy/example /Users/app/Desktop/eopsy/example1 /Users/app/Desktop/eopsy/example2 \n"
/bin/sh modify.sh -r -u /Users/app/Desktop/eopsy/example /Users/app/Desktop/eopsy/example1 /Users/app/Desktop/eopsy/example2

echo "\nTest 16 /bin/sh modify.sh -r -l /Users/app/Desktop/eopsy/example /Users/app/Desktop/eopsy/example1 /Users/app/Desktop/eopsy/example2 \n"
/bin/sh modify.sh -r -l /Users/app/Desktop/eopsy/example /Users/app/Desktop/eopsy/example1 /Users/app/Desktop/eopsy/example2



