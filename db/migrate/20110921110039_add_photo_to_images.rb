class AddPhotoToImages < ActiveRecord::Migration
  def self.up
    add_column :images, :img_file_name,    :string
    add_column :images, :img_content_type, :string
    add_column :images, :img_file_size,    :integer
    add_column :images, :img_updated_at,   :datetime
  end

  def self.down
    remove_column :images, :img_file_name, :img_content_type, :img_file_size, :img_updated_at
  end
end
