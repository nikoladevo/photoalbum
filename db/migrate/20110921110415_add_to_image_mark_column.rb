class AddToImageMarkColumn < ActiveRecord::Migration
  def self.up
    add_column :images, :mark, :integer, :default => 0
  end

  def self.down
    remove_column :images, :mark
  end
end
