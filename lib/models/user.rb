class User < ActiveRecord::Base
    
    has_many :favorites
    has_many :trees, through: :favorites
    validates :user_name, uniqueness: true

end

