require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
	it('processes the user entry and returns it title cased') do
		visit('/')
		fill_in('user_word', :with => 'gallinella')
		click_button('Calculate')
		expect(page).to have_content('Gallinella')
	end
end

describe('the scrabble score case path', {:type => :feature}) do
	it('processes the user entry and returns the scrabble score') do
		visit('/')
		fill_in('user_word', :with => 'gallinella')
		click_button('Calculate')
		expect(page).to have_content('11')
	end
end