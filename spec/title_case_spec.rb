require('rspec')
require('title_case')

describe('String#title_case!') do
	it("capitalizes the first letter of a word") do
		expect(("amazing").title_case!()).to(eq("Amazing"))
	end

	it("capitalizes the first letter of all words in a sentence") do
		expect(("game of thrones is amazing").title_case!()).to(eq("Game Of Thrones Is Amazing"))
	end
end