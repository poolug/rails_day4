require_relative 'modules.rb'

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
end

class Insecto < Animal
end

class Mamifero < Animal
end

class Pinguino < Ave
    include Habilidades::Nadador,Habilidades::Caminante,Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador,Habilidades::Caminante,Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Volador,Habilidades::Caminante,Habilidades::Nadador,Alimentacion::Herbivoro
end

class Perro < Mamifero
    include Habilidades::Nadador,Habilidades::Caminante,Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Nadador,Habilidades::Caminante,Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante,Alimentacion::Herbivoro
end

class Mosca < Insecto
    include Habilidades::Caminante,Habilidades::Volador,Alimentacion::Herbivoro,Alimentacion::Carnivoro
end

class Mariposa < Insecto
    include Habilidades::Volador,Alimentacion::Herbivoro
end

class Aveja < Insecto
   include Habilidades::Volador,Alimentacion::Herbivoro 
end

animal1 = Pinguino.new("Carlos").caminar
puts "Soy un #{Pinguino} y #{animal1}"

animal2 = Paloma.new("Maria").volar
puts "Soy una #{Paloma} y #{animal2}"

animal3 = Pato.new("Lucas").comer
puts "Soy un #{Pato} y #{animal3}"