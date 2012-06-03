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
      amount.to_s
    end
  end

  def total
		@amount
  end

  def cancel
    amount = @amount
    @amount = 0
    amount
  end
end

