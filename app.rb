require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
require('./lib/scrabble_score')
also_reload('lib/**/*.rb')

get('/') do
	erb(:index)
end

get('/rules') do
	erb(:rules)
end

get('/result') do
	@user_word = params.fetch('user_word').title_case!()
	@word_score = params.fetch('user_word').scrabble_score()
	erb(:result)
end