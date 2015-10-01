# La clase Dir nos sirve para trabajar con directorios

# Devuelve  el directorio en el que estamos
puts Dir.pwd

# Nos cambia de directorio
Dir.chdir('..')
puts Dir.pwd
Dir.chdir('ManejoArchivos')

# glob sirve para hacer una busqueda dentro del directorio actual
files = Dir.glob '*.pdf'
puts files

# Crea un directorio y le pasamos los permisos
# Dir.mkdir 'NombreDirectorio', 700
# Crea un directorio con los permisos por default
# Dir.rmdir 'NombreDirectorio'

# La clase File nos permite trabajar con archivos


# Modos
# "r"  Read-only, starts at beginning of file  (default mode).

# "r+" Read-write, starts at beginning of file.

# "w"  Write-only, truncates existing file
#      to zero length or creates a new file for writing.

# "w+" Read-write, truncates existing file to zero length
#      or creates a new file for reading and writing.

# "a"  Write-only, each write call appends data at end of file.
#      Creates a new file for writing if file does not exist.

# "a+" Read-write, each write call appends data at end of file.
#      Creates a new file for reading and writing if file does
#      not exist.

# Crea un nuevo archivo y lo abre, se le pasa el modo en que queremos abrir
file1 = File.new 'archivo_nuevo_2.rb', 'w'
# Abre un archivo, se le pasa el modo en este caso 'a+'
file2 = File.open 'archivo_nuevo.rb', 'a+'

# escribe y devuelve la cantidad de bytes escritos
count = file1.write 'Esta es una prueba'
puts count
# Escribe en el archivo, sin saltos de linea
file1.print "cualquiercosa"
file1.print "pegadito"

# Escribe en el archivo, y agrga un salto de linea
file2.puts "Otra texto con salto de linea"
file2.puts "otro mas"

# Mueve el puntero al inicio del archivo
file2.rewind

# lee todo el archivo
puts file2.read

file2.rewind

# lee la linea siguiente de donde esta el cursor
puts file2.gets
# igual que gets pero tira un error si el cursor esta en la ultima linea
puts file2.readline

# Cambia el nombre al archivo, se puede cambiar la extension, tipo de archivo
File.rename 'archivo_nuevo.rb', 'archivo_nuevo.txt'

# Cierra el archivo, siempre se debe cerrar el archivo al terminar de trabajar con el
file2.close

file3 = File.open 'archivo_nuevo.txt', 'a+'

file3.puts 'Holanda que talca', 'Como te baila'
file3.puts 'Holanda que talca', 'Como te baila'

file3.rewind

puts file3.gets
#devuelve el numero de linea en que se encuentra el cursor
puts file3.lineno
puts file3.gets
puts file3.lineno
puts file3.gets
puts file3.lineno

file3.close