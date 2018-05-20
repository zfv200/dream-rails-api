class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.belongs_to :user
      t.string :content
      t.string :adjectives
      t.string :collage

      t.timestamps
    end
  end
end
