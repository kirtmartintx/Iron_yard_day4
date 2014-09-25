# Define a Robot class
# A robot has a name

# A robot should have a method called 'say_hi' and it should return "Hi!"

# A robot should have a method called 'say_name' and it should return
# "My name is X" where X is the robot's name

# Define a BendingUnit class
# A BendingUnit inherits from Robot
# A bending unit has a method called 'bend'
# The bend method has one argument 'object_to_bend'
# The bend method should put to the console "Bend X!" where X is object_to_bend

# Define an ActorUnit class
# An ActorUnit inherits from Robot
# An ActorUnit has a method called 'change_name'
# The 'change_name' method accepts an argument 'new_name'
# The 'change_name' method changes the name property of Robot to 'new_name'


class Robot
  def initialize(name)
  @name = name
  end

  def say_hi
    puts "Hi!"
  end

  def say_name
    puts "My name is #{@name}"
  end
end

class BendingUnit < Robot

  def bend(object_to_bend)
    puts "BEND #{object_to_bend}"
  end

end

class ActorUnit < Robot

    def change_name(new_name)
      @name = new_name
    end
end

robot1 = Robot.new("Flexo")
robot1.say_hi
robot1.say_name


robot2 = Robot.new("Preacher Bot")


robot3 = BendingUnit.new("Bender")
robot3.say_hi
robot3.say_name
robot3.bend("bars")

robot4 = ActorUnit.new("Calculon")
robot4.say_hi
robot4.say_name
robot4.change_name("The Robot Devil")
robot4.say_name
