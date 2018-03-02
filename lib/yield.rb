# hello_proc = Proc.new do 
#   p "hello"
# end

# hello_procc = Proc.new { p "hello" }


# hello_proc.call
# hello_procc.call

# a = Proc.new { |a, b|  a + b }
# a.call(10, 20)

# def greeding(&block) # Procクラスのインスタンスが引数に渡されている。
#   p "good morning"
#   p block.arity
#   text = block.call('hello')
#   p text
#   p "night"
# end

# # greeding("a") これだと普通の関数の引数の定義になってしまう。


repeat_proc = Proc.new { |text| text * 2 }

# greeding(&repeat_proc) # あらかじめ定義しておいた、procのインスタンスを渡す（&proc_instance） & = ブロックを明示的に引数として渡す

def greeding(shuffle, repeat, question) # Procインスタンスとして受け取る
  p shuffle.call("shuffle")
  p repeat.call("hello")
  p question.call("like")
end


shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

greeding(shuffle_proc, repeat_proc, question_proc)

# 引数に関数を渡して、関数の中で実行しているのと同じきがする。
# だから、コールバック関数と同じ気がする。

block = ->(a, b) do  # Procクラスのインスタンスを、ラムダで作成している。
    p a + b 
end


p block.class
block.call(1,2)



