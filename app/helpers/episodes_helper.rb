module EpisodesHelper
	def find_character_id(name)
    	response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=#{name.gsub(' ','+')}")
    	puts name.gsub(' ','+')
    	puts response.code
    	character = JSON.parse response.body
  		return character[0]['char_id']
  	end
end
