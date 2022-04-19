# Crear el programa proyecciones.rb y un archivo con las proyecciones de venta de cada
# mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en la misma
# carpeta de trabajo que el código. Para realizar el ejercicio puedes agregar como contenido
# los siguientes datos:
# 300070,50520,35000,32810,47999,62050,89100,21000,100010,121900,99549,210
# 000
# El desafío consiste en hacer 2 simulaciones.
# ● Las ventas totales del primer semestre, dado que en la primera mitad del semestre
# se vende un 10% más.
# ● Las ventas totales del segundo semestre, dado que en la segunda mitad del
# semestre se vende un 20% más.

# El resultado debe ser presentado en un archivo llamado resultados.data. Los datos deben
# contener máximo 2 decimales y estar cada uno en una sola línea.

# Ejemplo de formato del contenido del archivo resultados.data.
# // Estos valores son referenciales
# 231231.32
# 879879.43

#Se abre el archivo ventas_base.db
ventas_base = open('ventas_base.db').read.split(',')

ventas_base2 = ventas_base.map do |i|
     i.to_f
end

#informacion del archivo en flotantes
# [300070.0, 50520.0, 35000.0, 32810.0, 47999.0, 62050.0, 89100.0, 21000.0, 100010.0, 121900.0, 99549.0, 210000.0]
# Las ventas totales del primer semestre, dado que en la primera mitad del semestre
# se vende un 10% más.

total_semestres = []
#suma total primeros 6 meses
suma_6_meses = ventas_base2[0..5].sum

#suma total 3 primeros meses primer semestre
suma_3_meses = ventas_base2[0..2].sum

#Calculo 10% de los primero 6 meses
primera_mitad = suma_3_meses*0.1

#Valor total suma primer semestres + 10% primeros 3 meses
total_primer_s = (suma_6_meses+primera_mitad)
total_semestres.push(total_primer_s)

# ● Las ventas totales del segundo semestre, dado que en la segunda mitad del
# semestre se vende un 20% más.

#suma total segundos 6 meses
suma_6_meses2 = ventas_base2[6..11].sum

#suma total 3 primeros meses primer semestre
suma_3_meses2 = ventas_base2[9..11].sum

#Calculo 10% de los primero 6 meses
segunda_mitad = suma_3_meses2*0.2

#Valor total suma primer semestres + 10% primeros 3 meses
total_segundo_s = (suma_6_meses2 + segunda_mitad)
total_semestres.push(total_segundo_s)

File.write("Resultados.data",total_semestres.join("\n"))
