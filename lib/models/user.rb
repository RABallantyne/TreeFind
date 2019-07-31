class User < ActiveRecord::Base
    has_many :trees
    has_many :favorites, through: :trees
    validates :user_name, uniqueness: true

    def self.list_users
        binding.pry
    end

end