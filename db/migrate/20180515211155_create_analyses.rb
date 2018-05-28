class CreateAnalyses < ActiveRecord::Migration[5.2]
  def change
    create_table :analyses do |t|
      t.string :url
      t.string :name
      t.belongs_to :dream

      t.timestamps
    end
  end
end
