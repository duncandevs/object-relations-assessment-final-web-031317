class Movie
  attr_accessor :title
  ALL = []
  def initialize(title)
    self.title = title
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_title(title)
    ALL.find{|movie| movie.title == title}
  end

  def ratings
    Rating.all.select{|rating| rating.movie = self}
  end

  def viewers
    Rating.all.select{|rating| rating.viewer = self}
  end

  def average_rating
    #array.inject(0){|sum,x| sum + x }
    sum_all_ratings = ratings.inject(0)do|sum , rating|
        sum + rating.score
    end
    (sum_all_ratings / ratings.length).to_f
  end

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
# Movie.find_by_title("exmachina")
# Movie.all.first.ratings
# Movie.all.first.viewers
# Movie.all.first.average_rating
