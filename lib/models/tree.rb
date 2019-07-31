class Tree < ActiveRecord::Base
    

has_many :favorites
has_many :users, through: :favorites

    def self.tall_trees
        where("min_height > ?", 50).pluck(:common_name)
    end

    def self.all_trees
        all.pluck(:common_name)
    end
end