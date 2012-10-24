class AddSongsTable < ActiveRecord::Migration
  def change

    create_table :songs do |t|
      t.string :name
      t.decimal :price
      t.string :audiofile
      t.timestamps
    end

  end
end
