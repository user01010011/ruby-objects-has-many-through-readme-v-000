class Customer
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

end
