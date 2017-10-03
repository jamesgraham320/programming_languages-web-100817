require "pry"

def reformat_languages(languages)
  # your code here
  # languages style -> language -> type
  # rearrangged_languages language -> type, style
  rearranged_languages = {}
  
  languages.each do |style, language|
		language.each do |name, type|
			rearranged_languages[name] = {type: type[:type], style: []}
      
		end
	end
  languages.each {|style, language|
    rearranged_languages.map {|name, info|
      if language.include?(name)
        info[:style] << style
      end
    }
  }
  #making a not here
	rearranged_languages
end


