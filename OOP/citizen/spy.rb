# Spy Class
# Specs
  #Implement a Spy class with the following API:
    #initialize(first_name, last_name, age)
    #license_to_kill? (boolean)
    #full_name (String)
class Spy

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def license_to_kill?
    @age >= 21

  end

  def first_name
    "My name is #{@last_name.capitalize}, #{@first_name.capitalize} #{@last_name.capitalize}"
  end

end
