require 'sinatra'
require 'yaml'
require 'json'

class Hobby < Sinatra::Base
  get '/' do
	  @hobbies = hobby_list
	  @labels = hobby_list.values.flatten.uniq.sort
    haml :home
  end

  def hobby_list
	  list = YAML.load_file('list.yaml')
	  list_2 = YAML.load_file('list_2.yaml')
	  list.merge(list_2)
  end
end
