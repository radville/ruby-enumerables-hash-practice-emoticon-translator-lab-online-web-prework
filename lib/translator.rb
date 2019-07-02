require "yaml"
require "pry"

def load_library(file)
  lib = YAML.load_file(file)
  hash = Hash.new(0)
  hash["get_emoticon"] = {}
  hash["get_meaning"] = {}
  lib.each do |pair|
    hash["get_meaning"][pair[1][1]] = pair[0] # keys are japanese, values meaning
    hash["get_emoticon"][pair[1][0]] = pair[0] # keys are english
# binding.pry
  end
  hash
end
# load_library("./lib/emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end