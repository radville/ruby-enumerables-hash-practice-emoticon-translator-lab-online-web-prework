require "yaml"
require "pry"

def load_library(file)
  lib = YAML.load_file(file)
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
  lib.each do |pair|
    # lib["get meaning"] = pair[0] 
    # binding.pry
  end
end
# load_library("./lib/emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end