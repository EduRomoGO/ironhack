puts "Cual es el fichero origen?"
originName = gets.chomp
puts "Cual es el fichero destino?"
destinyName = gets.chomp
contenidoOrigen = IO.read(originName)
IO.write(destinyName, contenidoOrigen)