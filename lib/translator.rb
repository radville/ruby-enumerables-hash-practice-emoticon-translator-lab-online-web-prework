require "yaml"

def load_library(file)
  lib = YAML.load_file(file)
  binding.pry
end
# load_library("./lib/emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end