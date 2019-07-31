class User < ActiveRecord::Base
    has_many :trees
    has_many :favorites, through: :trees
    validates :user_name, uniqueness: true
end