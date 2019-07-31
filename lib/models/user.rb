class User < ActiveRecord::Base
    
    has_many :favorites
    has_many :trees, through: :favorites
    validates :user_name, uniqueness: true

    def self.list_users
        all.pluck(:user_name)
    end

    def self.user_name
        
    end

    def self.saved_trees
        
    end

end

