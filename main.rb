# require path
# suggest use the DIR
#
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__)))

require "good"
require "free_duty_good"
require "item"
require "basket"
require "receipt"

# END USER CODE
# Follow the readme pattern (README.md)
#
# Scenario 1:
basket = Basket.new
basket.load_from_file("order.csv")

receipt = Receipt.new(basket)
receipt.print

# Scenario 2:
headached_pill = Product.new("headached pill")

basket = Basket.new
basket.add_item(headached_pill, quantity: 3)

receipt = Receipt.new(basket)
receipt.print
