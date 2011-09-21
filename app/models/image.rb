class Image < ActiveRecord::Base
    belongs_to :album  
    has_attached_file :img, :styles => { :medium => "500x500", :thumb => "200x200" },
                            :convert_options => {:thumb => "-gravity center -extent 100x70"}
                            
    validates_attachment_content_type :img, :content_type=>/^image\/(gif|png|x\-png|jpeg|jpg|pjpeg)$/
    validates :img_file_name, :presence => true        

    after_save  :get_exif

   def get_exif
    Magick::Image.read(img.path).first.inspect    
   end

end
