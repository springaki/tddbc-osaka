# coding: utf-8
module Drink
class Drink
  attr_accessor :name
  attr_accessor :price 

  def initialize(name, price)
    @name = name
    @price = price
  end
end
COKE = Drink.new("コーラ", 120)
end
