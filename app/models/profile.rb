class Profile < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  attr_accessible :user_id, :first_name, :last_name, 
  		:school, :state, :event
end
