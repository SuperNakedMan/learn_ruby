#write your code here
def ftoc(dd)
	farh = dd.to_f
	cels = (farh - 32) * 5/9
end

def ctof(dd)
	cel = dd.to_f
	far = (cel * 9/5) + 32
end
