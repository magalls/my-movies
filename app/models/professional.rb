class Professional < ApplicationRecord
   validates :name, :gender, presence: true
   validates :gender, inclusion: { in: ['male', 'female'],
        message: "%{value} is not valid - excepted 'male' or 'female'"}

        has_and_belongs_to_many :movies, association_foreign_key: 'movie_id', join_table: 'actors_movies'
end
