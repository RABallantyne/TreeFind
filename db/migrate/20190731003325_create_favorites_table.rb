class CreateFavoritesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :saved_tree
    end
  end
end
