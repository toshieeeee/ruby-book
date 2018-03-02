class Ticket 

  attr_reader :fare, :stamp_at # インスタンス変数の値を読み書きするメソッド

  def initialize(fare)
    @fare = fare
  end

  def stamp(name) # 引数を、インスタンス変数として、返す関数。 → これなんていうの？
    @stamp_at = name # アクセサメソッドとして、定義するために、コンストラクタに一緒に書いても良い気がする
  end



end