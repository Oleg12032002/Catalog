class CreateMusicProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :music_products do |t|
      t.string :name
      t.string :perfomet
      t.string :autor
      t.string :album
      t.float :prise

      t.timestamps
    end
  end
end
