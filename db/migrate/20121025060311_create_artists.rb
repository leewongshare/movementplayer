class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.date :birthdate
      t.string :photo
      t.text :biography

      t.timestamps
    end
  end
end
