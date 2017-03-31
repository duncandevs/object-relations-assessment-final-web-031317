class Viewer
  attr_accessor :first_name, :last_name , :name
  ALL = []
  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    all.find{|viewer| viewer.name = name}
  end

  def create_rating(movie,score)
    #not sure to use self.create_rating (who is in charge of creating rating?)
    Rating.new(movie,self,score)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
#test values
# duncan = Viewer.new("duncan man")
# Viewer.all
# Viewer.find_by_name("duncan man")
# movie = Movie.new("exmachina")
# duncan.create_rating(movie,10)
