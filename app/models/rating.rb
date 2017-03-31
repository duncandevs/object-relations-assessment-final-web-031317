class Rating
  attr_accessor :score , :movie , :viewer
  ALL = []
  def initialize(movie,viewer,score)
    @movie = movie
    @viewer = viewer
    @score = score
    ALL << self
  end

  def self.all
    ALL
  end

  # def viewer
  #   #calls viewer on Rating object ie: rating_n.viewer.name = "bob"
  #   #note "this" rating already has a viewer instantiated so no need for method
  #   @viewer
  # end
end
# ----------- TESTS ---------------
# duncan = Viewer.new("duncan man")
# Viewer.all
# Viewer.find_by_name("duncan man")
# movie = Movie.new("exmachina")
# duncan.create_rating(movie,10)
# rating.all
# Rating.all.first.viewer
# Rating.all.first.movie
