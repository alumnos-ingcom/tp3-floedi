Flofloedi@DESKTOP-1D870M5 MINGW64 ~ (master)
$ echo "Trabajo Practico #3 - Jerez, Florencia Edith"
	Trabajo Practico #3 - Jerez, Florencia Edith

Flofloedi@DESKTOP-1D870M5 MINGW64 ~ (master)
$ cd git

	##"Clonando archivos"
Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git (master)
$ git clone https://github.com/INGCOM-UNRN/tp3-floedi.git
Cloning into 'tp3-floedi'...
remote: Enumerating objects: 18, done.
remote: Counting objects: 100% (18/18), done.
remote: Compressing objects: 100% (13/13), done.
remote: Total 18 (delta 4), reused 11 (delta 2), pack-reused 0
Receiving objects: 100% (18/18), 5.42 KiB | 222.00 KiB/s, done.
Resolving deltas: 100% (4/4), done.
	
	##"Ingreso a la carpeta creada"
Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git (master)
$ cd tp3-floedi

	##"Compruebo el contenido de archivo grepdata.txt"
Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git/tp3-floedi (main)
$ cat grepdata.txt
Sep. 17, 2013
Esperanza High School
1830 N. Kellog Dr.
Anaheim, CA 92807-1281
Steve Marshal
714-555-7870 X7310
aztecwrestling@example.com
Brian Fortenbaugh
714-555-7870 x7309

Sep. 24, 2013
Sonora High School
401 S. Palm St.
La Habra, CA 90631
Carl Hohl (aka Krazy Rabbit)
562-555-9800

Oct. 1, 2013
Lakewood High School
440 Briercrest Ave.
Lakewood, CA 90713-2013
Andy Miramontes
562-555-1281

Oct. 8, 2013
North Torrance High School
2013 W. 182nd
Torrance, CA 90504
Don Henderson
310-555-4412

Oct. 15, 2013
El Dorado High School
1651 N. Valencia Ave.
Placentia, CA 90631
Steve Lawson
714-555-5350 x2134
Lawsonhawk@example.com

Nov. 12, 2013
Rosemead High School
9063 E. Sepulveda Dr.
Rosemead, CA 91770
Daren de Heras
daren103@example.com

	##"Instrucción 1"
		#"Busco los número telefónicos con terminación"

Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git/tp3-floedi (main)
$ grep [x+X][[:digit:]] grepdata.txt
714-555-7870 X7310
714-555-7870 x7309
714-555-5350 x2134

	##"Instrucción 2"
		#"Tres dígitos + un espacio en blanco"

Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git/tp3-floedi (main)
$ grep '^[0-9]\{1,3\}\s' grepdata.txt
401 S. Palm St.
440 Briercrest Ave.

	##"Instrucción 3"
		#"Líneas con fechas"

Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git/tp3-floedi (main)
$ grep '[[:alpha:]].\{3\}[[:digit:]].\s.[200]' grepdata.txt
Sep. 17, 2013
Sep. 24, 2013
Oct. 1, 2013
Oct. 8, 2013
Oct. 15, 2013
Nov. 12, 2013

	##"Instrucción 4"
		#"Patrón que comienza con vocal, caracter y repite la primera vocal"

Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git/tp3-floedi (main)
$ grep -E -o '([aeiou]).\1' grepdata.txt
eve
ono
aka
eve
eme
eme

	##"Instrucción 5"
		#"Se muestran todas las líneas que no comienzan con la letra S"	

Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git/tp3-floedi (main)
$ grep -v '^[S]' grepdata.txt
Esperanza High School
1830 N. Kellog Dr.
Anaheim, CA 92807-1281
714-555-7870 X7310
aztecwrestling@example.com
Brian Fortenbaugh
714-555-7870 x7309

401 S. Palm St.
La Habra, CA 90631
Carl Hohl (aka Krazy Rabbit)
562-555-9800

Oct. 1, 2013
Lakewood High School
440 Briercrest Ave.
Lakewood, CA 90713-2013
Andy Miramontes
562-555-1281

Oct. 8, 2013
North Torrance High School
2013 W. 182nd
Torrance, CA 90504
Don Henderson
310-555-4412

Oct. 15, 2013
El Dorado High School
1651 N. Valencia Ave.
Placentia, CA 90631
714-555-5350 x2134
Lawsonhawk@example.com

Nov. 12, 2013
Rosemead High School
9063 E. Sepulveda Dr.
Rosemead, CA 91770
Daren de Heras
daren103@example.com
	
	##"Instrucción 6"
		#"Líneas con correo electrónico"

Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git/tp3-floedi (main)
$ grep '[@]' grepdata.txt
aztecwrestling@example.com
Lawsonhawk@example.com
daren103@example.com

Flofloedi@DESKTOP-1D870M5 MINGW64 ~/git/tp3-floedi (main)
$ echo "TP3 - Jerez, Florencia Edith"
TP3 - Jerez, Florencia Edith