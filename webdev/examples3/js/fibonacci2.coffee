window.fibonacci = (n) ->
  x = 0
  y = 1
  c = 0
  t
  while c != n
  	t=x
  	x=y
  	y+=t
  	c++
  return x