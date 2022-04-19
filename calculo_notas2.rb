data = open('notas.data').readlines

data = data.map do |i|
    i.split(',')
end

#Se define un metodo para cambiar a enteros
def cambiar_enteros (arr)
    arr2 = arr.map do |j|
        j.to_i
    end
    return arr2
end

#se define el método

def nota_mas_alta(arr)
    #Se cambian los nombres por numeros 0
    n = arr.count
    n.times do |i|
        5.times do |j|
            if arr[i][j] == arr[i][0]
                arr[i][j] = 0
            end
        end
    end

    #Se cambia todo a enteros y se guarda en un nuevo array
    arr2 = []
    n.times do |i|
        arr2 << cambiar_enteros(arr[i])
    end

    

    #Se reccore el array para encontrar la nota máxima en cada alumno
    arr3 = []
    n.times do |i|
        arr3 << arr2[i].max
    end

    return arr3

end

print nota_mas_alta(data)
puts