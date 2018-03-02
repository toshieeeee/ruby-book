class WordSynth

  attr_reader :effects

  def initialize
    @effects = []
  end

  def add_effect(effect) # 引数で受け取るのは、procオブジェクト
    @effects << effect
  end

  def play(original_words)
    @effects.inject(original_words) do |words, effect|
      effect.call(words)
    end
  end
end