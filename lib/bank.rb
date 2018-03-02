require './lib/deep_freezable'
class Bank
  extend DeepFreezable
  CURRENCIES = deep_freeze({"Japan" => "yen", "US" => "dollar", "UK" => "pondo"})
end

# dug typing 


def display_name(obj)
  puts "name is #{obj.name}"
end

class User
  def name
    "alice"
  end
end

class Product
  def name
    "dvd"
  end
end


user = User.new
display_name(user)

pro = Product.new
display_name(pro)