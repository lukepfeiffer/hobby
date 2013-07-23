require 'sinatra'


get '/' do
  @questions = questions
  haml :home
end

def questions
  [" What is your name?", "Who are you?", "How old are you?", "Are you stupid?"]
end
