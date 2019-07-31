class Tree < ActiveRecord::Base
    belongs_to :user
    belongs_to :favorite

    def self.tall_trees
        where("min_height > ?", 50).pluck(:common_name)
    end

    def self.all_trees
        pluck(:common_name)
    end
end