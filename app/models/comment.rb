class Comment < ActiveRecord::Base
  validates_presence_of :reply
  belongs_to :user
  belongs_to :event

end
