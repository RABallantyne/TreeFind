class CreateFavoritesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :tree, foreign_key: true
      t.string :saved_tree
    end
  end
end
