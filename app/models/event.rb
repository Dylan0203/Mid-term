class Event < ActiveRecord::Base
  validates_presence_of :topic

  belongs_to :user

  has_many :event_categoryships
  has_many :categories, :through => :event_categoryships

  has_many :comments, :dependent => :destroy
end
