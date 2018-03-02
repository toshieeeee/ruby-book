class Product 
  DEFAULT_PRICE = 300


  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end

  def default_price
    DEFAULT_PRICE # Reffered inside instance method 
  end

  def self.price
    DEFAULT_PRICE
  end

end

product = Product.new("test")
p Product::DEFAULT_PRICE ## ClassName::Constant Name
Product::DEFAULT_PRICE = "aaaaaaaaå"
p Product::DEFAULT_PRICE