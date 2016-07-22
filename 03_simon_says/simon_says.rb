#write your code here
def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, *arg)
	p = ""
	t = 2
	if arg[0]
		t = arg[0]
	end
	t.times{p += (x + " ")}
	p[0..-2]
end

def start_of_word(x, n)
	x[0..n-1]
end

def first_word(x)
	w, i = x, 0
	while i <= x.length do
		if x[i] == " "
			w = x[0..i-1]
			i = x.length
		end
		i += 1
	end
	w
end

def titleize(x)
	w = ""
	i = 0
	while x do 
		f = first_word(x) + " "
		if %w(the and over).include?(f[0..-2]) && i != 0 
			w += f
		else
			w += f.capitalize
		end
		x = x[f.length..-1]
		i += 1
	end
	w[0..-2]
end

