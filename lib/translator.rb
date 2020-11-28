# require modules here
require "yaml"
require "pry"

def load_library(file_path)
 emoticon = YAML.load_file(file_path)
 fresh_hash = {}
 
 emoticon.each do |key,value|
   fresh_hash[key] = {}
   fresh_hash[key] [:english] = value[0]
   fresh_hash[key] [:japanese] = value[1]
 end
 fresh_hash
end

def get_japanese_emoticon(file_path,emoticon)
  library = load_library(file_path)
  binding.pry
  emoticon_jp = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon_jp ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path,emoticon)
   library = load_library(file_path)
   emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end