class CreateNominations < ActiveRecord::Migration[6.0]
  def change
    create_table :nominations do |t|
      t.references :user, foreign_key: true
      t.string :Poster
      t.string :Title
      t.integer :Year
      t.string :api_movieKey

      t.timestamps
    end
  end
end
