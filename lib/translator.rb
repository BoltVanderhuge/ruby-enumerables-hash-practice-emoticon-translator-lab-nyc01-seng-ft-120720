# require modules here
require"yaml"

def load_library(file_path)
 emoticons = YAML.load(file_path)
 fresh_array = {}
 
 emoticons.each.do |key,value|
   fresh_array[key] = {}
   fresh_array[key] [:english] = [0]
 end
 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end