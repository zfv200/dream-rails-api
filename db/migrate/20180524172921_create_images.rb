class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.belongs_to :dream
      t.text :image_data
      t.string :WebkitFilter
      t.string :opacity
      t.string :width
      t.string :height
      t.string :border_radius
      t.string :left
      t.string :top
      t.timestamps
    end
  end
end
