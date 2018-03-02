# top level = Object.new
# ここは、オブジェクトクラスのインスタンスです
# オブジェクトクラスのインスタンスは、Karnel module をMIX IN しているので、
# ここで、pやputsを呼び出すことが可能です。

module Loggable
  # define method or constant
  # module use-case 
  # 継承は使用できないが、共通のメソッドをもたせたいとき
  # Defaultでは、public methodとして、定義される。
  # MixIn - moduleの機能をクラスにincludeすることで、機能を追加すること

  # private

  def log(text) 
    puts "[LOG] #{text}"
  end

end


class Product

  include Loggable
  # extend Loggable

  def title
    log "title is called"
    "A great movie"
  end

end

class User

  include Loggable
  
  def name
    log "name is called"
    "Alice"
  end

end


product = Product.new
product.title

# p Product.included_modules # => [Loggable, Kernel]
# p Product.ancestors # => [Product, Loggable, Object, Kernel, BasicObject]


# user = User.new
# user.name



### Name space 

# Baseball module に属する、secondクラスを定義

module Baseball 
 class Second
  attr_reader :play
  def initialize(play, num)
    @play = play
    @num = num
  end
 end
end


# p a = Baseball::Second.new("alice",12)
# p a.play


module Tennis
end




module Rack
  module Cours
    class Test
      attr_reader :play
      def initialize(play, num)
        @play = play
        @num = num
      end
    end
  end
end

p test = Rack::Cours::Test.new("alice",12)

