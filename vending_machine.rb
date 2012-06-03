class VendingMachine
<<<<<<< HEAD
	attr_accessor :amount
					
	def initialize
		@amount = 0
	end

=======
  attr :amount
>>>>>>> 1ee82f5b5f1f2e1b795dd8b2ceec4e4f0548ad08
  def throw(amount)
	  if amount == Money::JUUEN or 
       amount == Money::GOJUUEN or
       amount == Money::HYAKUEN or
       amount == Money::GOHYAKUEN or
       amount == Money::SENEN
			@amount += amount
      "success"
    else
      "failure"
    end
  end

  def total
		@amount
  end

  def withdrow
  end
end

