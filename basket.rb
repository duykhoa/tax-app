class Basket
  # Return a list of item
  #   If @items doesn't exist, assign it to [] and return
  def items
    @items ||= []
  end

  # Add an item to basket
  #
  # basket = Basket.new
  #
  # # Add 2 bottle of perfumes
  # basket.add(perfume, 2)
  #
  def add_item(product, quantity)
    @items << Item.new(product, quantity)
  end


  # Remove an item
  #  to remove an item (user accidently add a wrong product, or wrong quantity)
  #
  def remove_item(product)
    # TODO
  end

  # Build from file
  #   Quick build from CSV file
  #
  def load_from_file(file_name)
    # TODO: read file, create the basket with list of items
  end
end
