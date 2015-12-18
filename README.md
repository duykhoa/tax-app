There are a few nouns, you should create class for them, like:

- goods or product
- receipt
- imported tax
- freedutygood (without sale tax)
- shoping basket

So there are the class names with behavior attached

- Good (or Product)
  + name
  + price
  + SALE_TAX = 10%
  + tax_rate = imported_tax (5%) + SALE_TAX

- FreeDutyGood < Good
  + inherit Good
  + SALE_TAX = 0

- Item
  + include a product object
  + with quantity

- Shopping basket class
  + Has many items
  + Allow user to add or remove a product
  + Allow user see all product
  + Allow read from file

- Receipt
  + for a shopping basket
  + calculate price
  + calculate tax
  + calculate total price (price + tax)

So the flow (I mean how end developer using your library)

```ruby
# Scenario 1: basket is read from file
#   Construct basket from csv file
# in main.rb
basket = Basket.new
basket.load_from_file("order.csv")

receipt = Receipt.new(basket)
receipt.total_price # Total price with tax
receipt.print # Print the receipt to output

# Scenario 2: basket is input by user
#
# Assumpt user has a list of products
# - headached_pill
# - perfume
# - hamburger
#
# So when user add product to shopping basket
basket = Basket.new

# Add 3 perfume bottles
basket.add_item(perfume, quantity: 3)

# Add 10 hamburger
basket.add_item(hamburger, quantity: 3)

# Otherwise, like show total price, task, or print receipt,
# It's totally same with Scenario 1
```
