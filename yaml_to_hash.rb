require 'yaml'

text = File.read("list.yaml")
text += File.read("list_2.yaml")

puts text

hash = YAML.load(text)

puts hash

require 'pry'
binding.pry
