require 'sinatra'
require 'yaml'
require 'json'

class Hobby < Sinatra::Base
  get '/' do
    @labels = hobby_list.values.flatten.uniq.sort
    haml :home
  end

  get '/hobbies' do
    hobby_list.map{|key,value| {name: key, labels: value} }.to_json
  end

  def hobby_list
    list = YAML.load_file('list.yaml')
    list_2 = YAML.load_file('list_2.yaml')
    list.merge(list_2)
  end
end
