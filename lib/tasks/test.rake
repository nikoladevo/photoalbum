require 'open-uri'

namespace :image do
task :test=>:environment do
url0 = "http://st.kinopoisk.ru/images/actor/6317.jpg"
img0 = open(url0)
actor0 = Person.where(:origin_name => "Paul Walker").first
actor0.avatar=img0
actor0.save

url1 = "http://st.kinopoisk.ru/images/actor/11437.jpg"
img1 = open(url1)
actor1 = Person.where(:origin_name => "Vin Diesel").first
actor1.avatar=img1
actor1.save

url2 = "http://st.kinopoisk.ru/images/actor/2318.jpg"
img2 = open(url2)
actor2 = Person.where(:origin_name => "Michelle Rodriguez").first
actor2.avatar=img2
actor2.save

url3 = "http://st.kinopoisk.ru/images/actor/47679.jpg"
img3 = open(url3)
actor3 = Person.where(:origin_name => "Jordana Brewster").first
actor3.avatar=img3
actor3.save

url4 = "http://st.kinopoisk.ru/images/actor/29366.jpg"
img4 = open(url4)
actor4 = Person.where(:origin_name => "Rick Yune").first
actor4.avatar=img4
actor4.save

url5 = "http://st.kinopoisk.ru/images/actor/22695.jpg"
img5 = open(url5)
actor5 = Person.where(:origin_name => "Chad Lindberg").first
actor5.avatar=img5
actor5.save

url6 = "http://st.kinopoisk.ru/images/actor/47429.jpg"
img6 = open(url6)
actor6 = Person.where(:origin_name => "Johnny Strong").first
actor6.avatar=img6
actor6.save

url7 = "http://st.kinopoisk.ru/images/actor/16059.jpg"
img7 = open(url7)
actor7 = Person.where(:origin_name => "Matt Schulze").first
actor7.avatar=img7
actor7.save

url8 = "http://st.kinopoisk.ru/images/actor/532.jpg"
img8 = open(url8)
actor8 = Person.where(:origin_name => "Ted Levine").first
actor8.avatar=img8
actor8.save

url9 = "http://st.kinopoisk.ru/images/actor/12801.jpg"
img9 = open(url9)
actor9 = Person.where(:origin_name => "Ja Rule").first
actor9.avatar=img9
actor9.save

urlfilm = "http://st.kinopoisk.ru/images/film/666.jpg"
imgfilm = open(urlfilm)
film = Film.where(:origin_name => "The Fast and the Furious").first
film.cover = imgfilm
film.save


end
end
