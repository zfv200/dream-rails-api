class CreateAnalyses < ActiveRecord::Migration[5.2]
  def change
    create_table :analyses do |t|
      t.string :content
      t.string :image_url

      t.timestamps
    end
  end
end
