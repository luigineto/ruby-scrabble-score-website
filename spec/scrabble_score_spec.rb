require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do
	it("returns a scrabble score for a letter") do
		expect(("a").scrabble_score()).to(eq(1))
	end

	it("returns a scrabble score for a capitaliazed letter") do
		expect(("A").scrabble_score()).to(eq(1))
	end

	it("returns a Scrabble Score for the sum of all the alphabet letters that values as 1") do
		expect(("aAeEiIoOuUlLnNrRsStT").scrabble_score()).to(eq(20))
	end

	it("returns a Scrabble Score for the sum of all the alphabet letters that values as 2") do
		expect(("dDgG").scrabble_score()).to(eq(8))
	end

	it("returns a Scrabble Score for the sum of all the alphabet letters that values as 3") do
		expect(("bBcCmMpP").scrabble_score()).to(eq(24))
	end

	it("returns a Scrabble Score for the sum of all the alphabet letters that values as 4") do
		expect(("fFhHvVwWyY").scrabble_score()).to(eq(40))
	end

	it("returns a Scrabble Score for the sum of all the alphabet letters that values as 5") do
		expect(("kK").scrabble_score()).to(eq(10))
	end

	it("returns a Scrabble Score for the sum of all the alphabet letters that values as 8") do
		expect(("jJxX").scrabble_score()).to(eq(32))
	end

	it("returns a Scrabble Score for the sum of all the alphabet letters that values as 10") do
		expect(("qQzZ").scrabble_score()).to(eq(40))
	end

	it("returns a Scrabble Score for the sum of all the alphabet letters") do
		expect(("aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVxXyYzZwW").scrabble_score()).to(eq(174))
	end
end