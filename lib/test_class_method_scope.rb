# ------------------------------------
# Method has 3 scope 
# 1, Public 2, Private 3, Protected
# ------------------------------------
# 1, Public 
# - どこでも呼べる
# - レシーバを指定して呼ぶ
# -- インスタンスメソッドのスコープは、デフォルトで、Publicになる。

# ------------------------------------
# 2, private
# - クラス内部でのみ呼べる
# - レシーバを指定して呼ぶことができない
# ------------------------------------
# 3, Protected 
# - クラス内部でのみ呼べる
# - レシーバを指定して呼べる
# ------------------------------------



class User

  attr_reader :first, :second, :third # クラスのインスタンス変数にアクセスするためのメソッド

  def initialize
    @first = 1
    @second = 2
    @third = 3 
  end

  def hello
   puts "hello" # Public scope
    hi
  end

  private

    def hi
      puts "hi" # publicMethodの中で呼ぶため？
    end

end

class Student < User
  def chao
    hi # private methodが継承されている。
  end
end


user = User.new


student =  Student.new
p student.first # 親クラスのインスタンス変数が継承されている。
p student.second