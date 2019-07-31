class Favorite < ActiveRecord::Base
    belongs_to :user
    belongs_to :tree


    def self.add_to_favorites
        response = Help.select_tree
        create(saved_tree: response)
    end


end