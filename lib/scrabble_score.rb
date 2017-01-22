class String
	define_method(:scrabble_score) do
		scrabble_word = self.split("")
		scrabble_score = 0

		scrabble_word.each() do |letter|
			case letter
			when "a", "A", "e", "E", "i", "I", "o", "O", "u", "U", "l", "L", "n", "N", "r", "R", "s", "S", "t", "T"
				scrabble_score = scrabble_score.+(1)
			when "d", "D", "g", "G"
				scrabble_score = scrabble_score.+(2)
			when "b", "B", "c", "C", "m", "M", "p", "P"
				scrabble_score = scrabble_score.+(3)
			when "f", "F", "h", "H", "v", "V", "w", "W", "y", "Y"
				scrabble_score = scrabble_score.+(4)
			when "k", "K"
				scrabble_score = scrabble_score.+(5)
			when "j", "J", "x", "X"
				scrabble_score = scrabble_score.+(8)
			when "q", "Q", "z", "Z"
				scrabble_score = scrabble_score.+(10)
			else
				scrabble_score
			end
		end
		scrabble_score
	end
end