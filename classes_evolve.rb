# project
class Human
  def evolve
    puts 'Humans Evolve'
  end
end

class Person < Human
  @@Person = 0
  def initialize(id, name, age)
    @id = id
    @name = name
    @age = age
    @@Person += 1
  end

  def intro
    puts "My name is #{@name} and I am #{@age} years Old"
  end

  def self.getPersonCount
    @@Person
  end
  def evolve
    puts 'People evolve'
  end
end

person1 = Person.new('Id', 'Jack', '99')
person2 = Person.new('Id', 'Ken', '89')
person1.intro
person2.intro
person1.evolve

print 'Number of Person created ',Person.getPersonCount

