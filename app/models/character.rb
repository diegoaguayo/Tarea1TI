class Character
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  
  def initialize(id, name, occupation, img, status, nicknamec, appearance, better_call_saul_appearance, portrayed, category)
    @id = id
    @name = name
    @occupation = occupation
    @img = img
    @status = status
    @nickname = nickname
    @appearance = appearance
    puts 'hola'
    puts appearance
    @better_call_saul_appearance = better_call_saul_appearance
    @portrayed = portrayed
    @category = category
  end
  
  def id
    @id
  end

  def name
    @name
  end

  def occupation
    @occupation
  end

  def img
    @img
  end

  def status
    @status
  end

  def nickname
    @nickname
  end

  def appearance
    @appearance
  end

  def better_call_saul_appearance
    @better_call_saul_appearance
  end

  def portrayed
    @portrayed
  end

  def category
    @category
  end
end