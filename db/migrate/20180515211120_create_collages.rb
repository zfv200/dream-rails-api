class CreateCollages < ActiveRecord::Migration[5.2]
  def change
    create_table :collages do |t|
      t.text :image_url
      t.belongs_to :dream

      t.timestamps
    end
  end
end
