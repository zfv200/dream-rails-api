class CreateCollages < ActiveRecord::Migration[5.2]
  def change
    create_table :collages do |t|
      t.string :image_url

      t.timestamps
    end
  end
end
