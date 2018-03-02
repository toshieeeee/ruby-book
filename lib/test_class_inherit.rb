# :!, :!=, :!~, :<=>, :==, :===, :=~, :__id__, :__send__, :class, :clone, 
# :define_singleton_method, :display, :dup, :enum_for, :eql?, :equal?, :extend, 
# :freeze, :frozen?, :hash, :inspect, :instance_eval, :instance_exec, :instance_of?, 
# :instance_variable_defined?, :instance_variable_get, :instance_variable_set, :instance_variables, 
# :is_a?, :itself, :kind_of?, :method, :methods, :nil?, :object_id, :private_methods, 
# :protected_methods, :public_method, :public_methods, :public_send, :remove_instance_variable, 
# :respond_to?, :send, :singleton_class, :singleton_method, :singleton_methods, :taint, :tainted?, 
# :tap, :to_enum, :to_s, :trust, :untaint, :untrust, :untrusted?

# Object class から継承した、メソッドの一覧
# すべてのクラスは、基本的に、obeject classを継承する。
# したがって、rubyの全てのクラスのインスタンスは、上記のメソッドを使用することができる（= これを組み込みライブラリ？と呼ぶ？）

# super  = ParentObj.initialize

# 継承 = メソッドだけではなく、インスタンス変数も、継承される
# メソッドは、publicだけではなく、privateも継承される。



# [まとめ]
# 1, すべてのクラスは、Objectクラスのメソッドを継承 || 親クラスのメソッド + インスタンス変数を継承する。
# 2, メソッドは、Public だけではなく、Privateも継承される。
# 3, 子クラスで、親クラスのコンストラクタを、superで呼ぶことができる。





class Product

  attr_reader :name, :price # privateメソッドのような呼び出され方だなぁ


  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{self.name}, price: #{self.price}," 
  end


end

class DVD < Product

  attr_reader :run_time

  def initialize(name, price, run_time)
    super(name, price) # = Product.initialize(name, price)
    @run_time = run_time
  end

  def to_s # over ride Method
    "#{super} run_time: #{self.run_time}"#子クラスは、親クラスで定義されたメソッドをオーバーライドすることができる。
  end

end

dvd = DVD.new("Queen", 1980, 1000)

p dvd.to_s


