require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

# 1, Confirm whether Gate Object can create for now

class GateTest < Minitest::Test

  # scenario 

  # 1, Buy a ticket (¥150)
  # 2, Enter at umeda, Exit at 13 station
  # 3, Expect can be exit at 13 station


  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)

  end

  def test_umeda_to_juso
    ticket = Ticket.new(150)
    assert @juso.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end

  # umeda to mikuni
  # juso to mikuni

  def test_umeda_to_mikuni
    ticket = Ticket.new(190)
    assert @juso.exit(ticket)

  end


end 
