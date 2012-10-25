class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :photo
      t.date :releasedate

      t.timestamps
    end
  end
end
