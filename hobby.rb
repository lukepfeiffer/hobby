require 'sinatra'
require 'yaml'
require 'pry'

get '/' do
	@hobbies = hobby_list
  haml :home
end

def hobby_list
	YAML.load_file('list.yaml')
end
