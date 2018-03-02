module Effects 

  def self.reverse
    ->(words) do # lamdaの引数はstring
      words.split(" ").map(&:reverse).join(" ")
    end
  end

  def self.echo(rate)
    ->(words) do 
      words.chars.map { |c| c == " " ? c : c * rate }.join
    end 
  end

  def self.loud(level)
    ->(words) do 
      # スペースが一つの区切りになる。
      # words.chars.map { |c| c == " " ? } 
      # .map(&:upcase)
      words.split(" ").map { |word| word.upcase + "!" * level }.join(" ")
    end
  end

end