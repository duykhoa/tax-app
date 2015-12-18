class FreeDutyGood < Good
  # Ofcourse, tax is 0
  SALE_TAX = 0

  def initialize(name: "", price: 0)
    super(name: name, price: price)
  end
end
