class Room < ActiveRecord::Base
  attr_accessible :is_accessible, :name, :preferred_event, :size
end
