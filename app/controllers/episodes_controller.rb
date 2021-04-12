require 'http'
require 'json'

class EpisodesController < ApplicationController

  def show
  	response = HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes/' + params[:id])
  	e = (JSON.parse response.body)[0]
  	@episode = Episode.new(e["episode_id"], e["title"], e["season"], e["episode"], e["air_date"], e["characters"], e["series"])
  end
end
