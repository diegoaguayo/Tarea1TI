class CharactersController < ApplicationController
  def show
  	response = HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/characters/' + params[:id])
  	c = (JSON.parse response.body)[0]
  	@char = Character.new(c["id"], c["name"], c["occupation"], c["img"], c["status"], c["nickname"],
  						c["appearance"], c["better_call_saul_appearance"], c["portrayed"], c["category"])
  	puts @char.nickname
  end
end