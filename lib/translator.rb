# require modules here
require "yaml"

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
 fresh_hash = {}
 
 emoticons.each do |key,value|
   fresh_hash[key] = {}
   fresh_hash[key] [:english] = value[0]
   fresh_hash[key] [:japanese] = value[1]
 end
 fresh_hash
end

def get_japanese_emoticon(file_path,emoticons)
 library = load_library(file_path)
  emoticons = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path,emoticons)
   library = load_library(file_path)
  emoticons = library.keys.find do |key|
    library[key][:japanese] == emoticons
  end
  emoticons ? emoticons : "Sorry, that emoticon was not found"
end