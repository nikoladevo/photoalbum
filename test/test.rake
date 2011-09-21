require 'open-uri'

namespace :image do  
  task :test=>:environment do
    url="http://st.kinopoisk.ru/im/poster/1/0/5/kinopoisk.ru-Titanic-1058520--o--.jpg"
    img=open(url)
    film=Person.find(2)
    film.avatar=img
    film.save
  end
end
