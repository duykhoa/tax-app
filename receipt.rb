class Receipt
  attr_reader :basket

  def initialize(basket)
    @basket = basket
  end

  # Calculate the raw_price
  #   This code is same with
  #
  #   sum = 0
  #
  #   basket.items.each do |item|
  #     sum += item.product.price * item.quantity
  #   end
  #
  def raw_price
    basket.items.inject(0) do |sum, item|
      sum + item.product.price * item.quantity
    end
  end

  # Calculate the tax fee
  #   Sum of all the product tax
  #
  #   Product's tax = tax_rate * price
  #
  #   Follow the `raw_price` method, just instead of
  #   calculate the price, calc the tax.
  def tax
    #TODO
  end

  # Calculate the final price (raw_price + tax)
  def total_price
    tax + raw_price
  end

  # Print the receipt
  #   Something like the output format
  #
  #   1 imported bottle of perfume: 32.19
  #   1 bottle of perfume: 20.89
  #   1 packet of headache pills: 9.75
  #   1 imported box of chocolates: 11.85
  #   Sales Taxes: 6.70
  #   Total: 74.68
  # May be support different format, such as :json, :csv, and :console
  #
  def print(format = :console)
    #TODO
  end
end
