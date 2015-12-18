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
# Follow the readme pattern
#
# Scenario 1:
basket = Basket.new
basket.load_from_file("order.csv")

receipt = Receipt.new(basket)
receipt.print 

# Scenario 2:
# products << headached_pill
# products << perfume
# products << hamburger

basket = Basket.new

receipt = Receipt.new(basket)
receipt.print 
