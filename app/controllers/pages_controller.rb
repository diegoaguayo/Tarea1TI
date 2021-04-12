# frozen_string_literal: true

class PagesController < ApplicationController
  def home; end

  def search 
    #codigo sacado de https://melvinchng.github.io/rails/SearchFeature.html#43-adding-a-simple-search-feature
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      response = HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=' + params[:search].downcase.gsub(' ','+'))
      puts response.code
      puts response.body
      @characters = (JSON.parse response.body)
    end
  end
end
