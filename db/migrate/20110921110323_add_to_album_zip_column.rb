class AddToAlbumZipColumn < ActiveRecord::Migration
  def self.up
    add_column :albums, :bundle_filename,    :string
  end

  def self.down
    remove_column :albums, :bundle_filename
  end
end
