require 'sinatra'


get '/' do
  @questions = questions
  haml :home
end

def questions
  ["hello"]
end
