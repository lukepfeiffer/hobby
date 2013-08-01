require 'sinatra'
require 'yaml'
require 'pry'
require 'json'

get '/' do
	@hobbies = hobby_list
	@labels = hobby_list.values.flatten.uniq
  haml :home
end

def hobby_list
	YAML.load_file('list.yaml')
end

hobby_list.to_json
