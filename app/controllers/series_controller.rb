require 'http'
require 'json'

class SeriesController < ApplicationController
  def index
  end

  def show
  	
  	response = HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=' + params[:id])
  	episodes = JSON.parse response.body
  	lower = episodes[0]['season'].to_i
  	higher = episodes[0]['season'].to_i

  	for episode in episodes
  		lower =  episode['season'].to_i < lower ? episode['season'].to_i : lower
  		higher =  episode['season'].to_i > higher ? episode['season'].to_i : higher
  	end
  	@serie = Serie.new(params[:id], higher.to_i)

  end
end
