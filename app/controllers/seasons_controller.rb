class SeasonsController < ApplicationController

  def show
  	response = HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=' + params[:series_id])
  	json_episodes = JSON.parse response.body
  	@episodes = Array.new
  	for e in json_episodes
  		if e['season'] == params[:id]
  			episode = Episode.new(e["episode_id"], e["title"], e["season"], e["episode"], e["air_date"], e["charactersarray"], e["series"])
  			@episodes.push(episode)
  		end
  	@episodes.sort_by { |e| [e.episode] }
  	end

  end
end
