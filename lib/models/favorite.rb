class Favorite < ActiveRecord::Base
    has_many :trees
    has_many :users, through: :trees
end