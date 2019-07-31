class CreateTreesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.string :common_name
      t.string :common_fam_name
      t.string :coniferous_deciduous
      t.string :sci_name
      t.string :bark_color
      t.string :bark_texture
      t.string :leaf_type
      t.string :leaf_arrangement
      t.string :leaf_shape
      t.string :needle_shape
      t.string :cone_type
      t.string :fruit
      t.integer :min_elevation
      t.integer :max_elevation
      t.integer :min_height
      t.integer :max_height
      t.string :twig_texture
      t.string :flower_shape
      t.string :flower_color
      t.string :habitat
    end
  end
end
