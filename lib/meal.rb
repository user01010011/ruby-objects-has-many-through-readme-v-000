class Meal
  attr_reader :waiter, :customer, :total, :tip

  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = amount
    @tip = 0
    @@all << self
  end

  def self.all
    @@all
  end

end