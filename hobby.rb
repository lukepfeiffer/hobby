require 'sinatra'
require 'yaml'
require 'pry'
require 'json'

get '/' do
	require 'pry'; binding.pry
	@hobbies = hobby_list
	@labels = hobby_list.values.flatten.uniq
  haml :home
end

def hobby_list
	list = YAML.load_file('list.yaml')
	list_2 = YAML.load_file('list_2.yaml')
	list.merge(list_2)
	hobby_list.to_json
end

hobby_list.to_json
