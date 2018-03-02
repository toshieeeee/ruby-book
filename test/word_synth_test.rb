require 'minitest/autorun'
require './lib/word_synth'
require './lib/effects'

class WordSynthTest < Minitest::Test
  # とりあえず、クラスとモジュールが参照できることを確認する、
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal "Ruby is fun!", synth.play("Ruby is fun!")
  end

  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal "ybuR si !nuf", synth.play("Ruby is fun!")
  end

  def test_play_with_many_effect
    synth = WordSynth.new
    synth.add_effect(Effects.echo(2))
    
    assert_equal "RRuubbyy iiss ffuunn!!", synth.play("Ruby is fun!")
    synth.add_effect(Effects.loud(2))
    
    assert_equal "RRUUBBYY!! IISS!! FFUUNN!!!!", synth.play("Ruby is fun!")
    
  end



end