class VendingMachine
  def throw(amount)
	  if amount == Money::JUUEN or 
       amount == Money::GOJUUEN or
       amount == Money::HYAKUEN or
       amount == Money::GOHYAKUEN or
       amount == Money::SENEN
      "success"
    else
      "failure"
    end
  end
  def total
		Money::JUUEN
  end
  def withdrow
  end
end

