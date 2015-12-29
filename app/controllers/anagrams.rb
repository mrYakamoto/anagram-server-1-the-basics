get '/:word' do
  @word = params[:word]
  # Look in app/views/anagrams/index.erb
  erb :"anagrams/index"
end

post '/:word' do
  @word = params[:input_word]
  erb :"anagrams/index"
end
