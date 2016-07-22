class Book
# write your code here
	def title
		@title
	end

	def title=(str)
		k = 0
		@title = str.split.map do |word|
			if %w(the a an and in of).include?(word) && k != 0
				k+=1
				word
			else
				k+=1
				word.capitalize
			end
		end.join(" ")
	end
end
