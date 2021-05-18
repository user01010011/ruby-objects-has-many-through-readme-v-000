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

  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end

  def waiters
    meals.collect do |meal|
      meal.waiter
    end
  end

end
