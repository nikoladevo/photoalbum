require 'zip/zip'
require 'zip/zipfilesystem'
class Album < ActiveRecord::Base
    has_attached_file :cover, :styles => { :medium => "200x200", :thumb => "70x70" },
    :convert_options => {:thumb => "-gravity center -extent 70x70"}
  has_many :images, :dependent => :destroy
  has_many :histories, :dependent => :destroy
  validates :name, :presence => true  
  
  belongs_to :user
  
  def access?(user_id)
    user = User.find(user_id)    
    return true if user.admin?    
    return user.albums.exists?(self.id)
  end
  
  
  def to_zip(user, id = self.id)
   zipname = "#{RAILS_ROOT}/public/uploads/#{user}/album#{id}.zip"
   if File.file?(zipname)
     File.delete(zipname)
   end
   self.bundle_filename = "/uploads/#{user}/album#{id}.zip"
  Zip::ZipFile.open(zipname, Zip::ZipFile::CREATE) do |zipfile|
    self.images.collect do |i|             
        if !zipfile.find_entry(i.img_file_name)           
         zipfile.add("#{i.img_file_name}", "#{i.img.path(:medium)}")                   
        end
      end
    end
   File.chmod(0644,zipname)
   self.save
  end    
end
