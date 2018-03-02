params = {drink: true, potato: false}

def buy(menu, drink: true, potato: true) # key word argments（キーワード引数）

  if drink
  end
  if potato
  end
end

# buy("chesse" ,drink: true, potato: true) => call "synbol; value"
# buy("burg")  => # can not use argment()
# buy("chesse", potato: false) # can replece arg order

buy("fish", params)


def find_currency(country)
  currencies = {japan: "yen", us: "dollar", india: "rupee"}
  currencies[country]
end

def show_currency(country)
  if currency = find_currency(country)  # 条件分岐で変数に代入
    currency&.upcase # nil対策 - "&."（nilObjに対してメソッドを呼んでも、エラーではなく、nilが返る）
  end
end

p show_currency(:japan)
p show_currency(:won)