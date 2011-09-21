require 'open-uri'
#создание администратора
admin=User.new(:login=>"admin", :name => "admin", :password=>"admin2", :password_confirmation=>"admin2", :email=>"admin@msiu.ru")
admin.role=1
admin.save

dir_path = "#{RAILS_ROOT}/public/uploads/#{admin.login}/" 
if Dir[dir_path].size == 0
   Dir.mkdir(dir_path)
end