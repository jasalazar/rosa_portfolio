class CreateAdminArtists < ActiveRecord::Migration
  def change
    create_table :admin_artists do |t|
      t.string :name
      t.text :sinopsis

      t.timestamps
    end
  end
end
