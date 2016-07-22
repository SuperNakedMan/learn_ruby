#write your code here
def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arg)
	tot = 0.0
	arg.each{|x| tot+=x}
	tot
end

def multiply(*args)
	len = args.length
	i, p = 0, 1
	len.times{
		p *= args[i]
		i += 1
	}
	p
end
