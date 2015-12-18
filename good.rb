class Good
  SALE_TAX = 0.1
  IMPORTED_TAX = 0.05

  # just open, or if you want to protect them
  attr_accessor :name, :price

  def initialize(name: "", price: 0)
    @name = name
    @price = price
  end

  # Return the tax rate
  def tax_rate
    SALE_TAX + IMPORTED_TAX
  end
end
