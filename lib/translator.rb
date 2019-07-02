require "yaml"
require "pry"

def load_library(file)
  lib = YAML.load_file(file)
  hash = Hash.new(0)
  hash["get_emoticon"] = {}
  hash["get_meaning"] = {}
  lib.each do |pair|
    hash["get_meaning"][pair[1][1]] = pair[0] #key is japanese emoticon, value is description
    hash["get_emoticon"][pair[1][0]] = pair[1][1]  #key is english emoticon, value is japanese emoticon
# binding.pry
  end
  hash
end

def get_japanese_emoticon(file, emoticon)
  hash = load_library(file)
  if hash["get_emoticon"].keys.include?(emoticon)
    hash["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found" 
  end
end

def get_english_meaning(file, emoticon)
  hash = load_library(file)
  if hash["get_meaning"].keys.include?(emoticon)
    hash["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end