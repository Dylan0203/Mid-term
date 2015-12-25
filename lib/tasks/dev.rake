namespace :dev do

  task :demo => :environment do
    puts "demo!!!"

    puts "User: #{User.count}"

    puts "Event: #{Event.count}"

    puts "Comment: #{Comment.count}"

    puts "Category: #{Category.count}"

  end


  task :rebuild => [ "db:drop", "db:setup", :fake ]



  task :fake => :environment do
    User.delete_all
    Event.delete_all
    Comment.delete_all
    Category.delete_all

    puts "Creating fake Data!!!"

    user = User.create!( :email => "dylanmail0203@gmail.com", :password => "12345678", :role => "admin")

    
    
    50.times do |i|
      e = Event.create( :name => Faker::App.name )
      10.times do |j|
        e.attendees.create( :name => Faker::Name.name )
      end
    end
  end
end