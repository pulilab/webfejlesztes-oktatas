window.fizzbuzz = (n) ->
	resp = []
	if n % 3 == 0
		resp.push "fizz"
	if n % 5 == 0
		resp.push "buzz"
	if n % 7 == 0
		resp.push "bizz"
	if resp.length == 0
		resp.push n
	return resp.join("")
