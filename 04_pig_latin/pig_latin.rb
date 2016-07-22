#write your code here
def translate(phr)
	phr = phr.split
	i = 0	
	while i < phr.length
		k = 0
		s_w = phr[i]
		while k <= 3 do 
			if %w(a e i o u).include?(s_w[k])
				if k == 0 
					s_w << "ay"
					break
				end
				
				#this if statement is needed to handle the special case
				#of the 'qu' single  phoneme
				if s_w[k] == "u" && s_w[k-1] == "q"
					k += 1
				end
				#####################################
				
				s_w = s_w[k..-1] + s_w[0..k-1] + "ay"
				break
			end
			k += 1			
		end
	#if %w(a e i o u).include?(phr[i].split(//).first)
	#	phr[i] << "ay"
	#elsif %w(a e i o u).include?(phr[i].split(//)[1])
	#	phr[i] = phr[i][1..-1] + phr[i][0] + "ay"
	#else
	#	phr[i] = phr[i][2..-1] + phr[i][0..1] + "ay"
	#end
	phr[i] = s_w
	i += 1
	end
	phr.join(" ")
end

## Official solution
def translateword(word)
	res = case word
	when /^[aeiou]/
		word + 'ay'

	when /^(qu+)(.*)/
		$2 + $1 + "ay"

	when /^([^aeiou]+)(.*)/
		$2 + $1 + "ay"

	else
		word 
	end
end

def translate_p(phrase)
	puts
	piglist = []
	wlist = phrase.split
	wlist.each do |w|
		piglist << translateword(w)
	end

	puts "word/phrase: #{phrase}; pig latin translation: #{piglist.inspect} \n"
	res = piglist.join(" ")
end
