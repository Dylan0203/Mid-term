class Category < ActiveRecord::Base

  has_many :event_categoryships
  has_many :events, :through => :event_categoryships
  
end
