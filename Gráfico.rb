def chart (arr)
    #Se obtiene el largo del array
    n = arr.count

    #ciclos para recorres el array e imprimir * por el valor dentro del array
    n.times do |i|
        print "|"
        arr[i].times do |j|
            print "**"
        end
        print "\n"
    end

    #Se obtiene el maximo del array
    maximo = arr.max

    #Se imprimen las ultimas lineas
    print ">"
    maximo.times do |m|
        print "--"
    end
    print "\n"

    #Se imprimen los números de la base
    maximo.times do |c|
        print "#{c+1} "
    end
    print "\n"
end



print chart([5, 3, 2, 5, 10])