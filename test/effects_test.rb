require 'minitest/autorun'
require './lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    effect = Effects.reverse # 返り値がProcインスタンス
    assert_equal "ybuR si !nuf", effect.call("Ruby is fun!")
  end

  def test_echo

    echo = Effects.echo(1)
    assert_equal "Ruby is fun!", echo.call("Ruby is fun!")

    echo = Effects.echo(2)
    assert_equal "RRuubbyy iiss ffuunn!!", echo.call("Ruby is fun!") # Procオブジェクトのインスタンスメソッドを呼ぶ

    echo = Effects.echo(3)
    assert_equal "RRRuuubbbyyy iiisss fffuuunnn!!!", echo.call("Ruby is fun!")

  end

  def test_loud
    loud = Effects.loud(2)
    assert_equal "RUBY!! IS!! FUN!!!", loud.call("Ruby is fun!")
  end

  def test_loud
    loud = Effects.loud(3)
    assert_equal "RUBY!!! IS!!! FUN!!!!", loud.call("Ruby is fun!")
  end

end
