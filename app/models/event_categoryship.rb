class EventCategoryship < ActiveRecord::Base

  belongs_to :event
  belongs_to :category

end
