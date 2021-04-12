class Serie
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  def initialize(name, n_seasons)

    @name = name
    @n_seasons = n_seasons
  end
  
  def name
    @name
  end

  def n_seasons
    @n_seasons
  end


  def persisted?
    false
  end
end