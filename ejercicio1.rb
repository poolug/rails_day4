class Person
    attr_reader :first_name, :last_name, :age
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end
    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "\nHola profesor. Mi nombre es #{self.first_name} #{self.last_name}."
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{self.first_name} #{self.last_name}."
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "\nHola. Soy uno de los apoderados. Mi nombre es #{self.first_name} #{self.last_name}."
    end
end

teacher = Teacher.new("Rodrigo", "Albornoz", 45)
teacher.introduce
teacher.talk

student = Student.new("Pedro", "Rodriguez", 25)
student.introduce
student.talk

parent = Parent.new("Maria", "Aramaki", 60)
parent.introduce
parent.talk