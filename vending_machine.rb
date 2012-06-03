class VendingMachine
	attr_accessor :amount
					
	def initialize
		@amount = 0
	end

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

