def g_proc(array)
  counter = 0
  Proc.new do
    counter += 10
    array << counter
  end
end