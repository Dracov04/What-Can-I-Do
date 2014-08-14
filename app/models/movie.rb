class Movie < ActiveRecord::Base
	has_and_belongs_to_many :cast_members
	has_many :reviews
	has_and_belongs_to_many :categories

	validates :poster, presence: {message: "Error, there isn't any poster"}
	validates :title, uniqueness: {message: "Error, there is a movie with this title"}

	def self.last_created_movies(n)
		movie = order(created_at: :desc).limit(n)
		unless movie.present?
			raise
	ActiveRecord::RecordNotFound.new("couldn´t find movie with id=#{id}")
	end
	movie
	end

	paginates_per 10
end