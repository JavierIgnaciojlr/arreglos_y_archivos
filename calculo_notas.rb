#abrir el archivo
data = open('notas.data').readlines

#información obtenida del archivo
#["Javiera,9,5,3,9\r\n", "Francisca,8,3,5,5\r\n", "Juan,9,5,5,9\r\n", "Pedro,5,4,6,8\r\n", "Cecilia,8,7,8,8"]

#Se hace un split para separar la información
data = data.map do |i|
    i.split(',')
end

    








#se define el método

def nota_mas_alta(arr)
    #Se cambian los nombres por numeros 0
    arr[0] = 0

    #Se cambia todo a enteros
    arr2 = arr.map do |j|
        j.to_i
    end

    #se retorna la nota maxima
    return arr2.max
end

print nota_mas_alta(data[0])
puts