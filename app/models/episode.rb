class Episode
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  
  def initialize(episode_id, title, season, episode, air_date, characters, series)
    @episode_id = episode_id
    @title = title
    @season = season
    @episode = episode
    @air_date = air_date
    @characters = characters
    @series = series
  end
  

  def episode_id
    @episode_id
  end

  def title
    @title
  end

  def season
    @season
  end

  def episode
    @episode
  end

  def air_date
    @air_date
  end

  def characters
    @characters
  end

  def series
    @series
  end
end