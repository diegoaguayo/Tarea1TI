class Season
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  def initialize(season_n) 
    @episodes = episodes
  end
  
  def persisted?
    false
  end
end