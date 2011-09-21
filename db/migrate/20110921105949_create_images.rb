class CreateImages < ActiveRecord::Migration
  def self.up    
    create_table :images do |t|      
      t.references :album
 
      t.timestamps
    end
 
    add_index :images, :album_id    
  end

  def self.down
    drop_table :images
  end
end
