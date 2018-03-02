class Gate

  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  # Ticket instance has @fare & @stamp_at

# 1, define constructor 

  def initialize(name)
    @name = name 
  end

  def enter(ticket) # 引数に、TicketClassのインスタンスを受け取っている。
    ticket.stamp(@name) # ticketのインスタンスメソッドを呼んでいる。
  end



  # ticket instance の@stamp_at に値（駅名のシンボル）を入れる

  def calc_fare(ticket) # 引数にticketのインスタンス
    from = STATIONS.index(ticket.stamp_at) # => 0,1,2 , index => Return Array index 
    to = STATIONS.index(@name)  # インスタンスメソッドi
    distance = to - from
    FARES[distance - 1]
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end



end