class Tournament < ActiveRecord::Base
  attr_accessible :end_date, :location, :name, :number_of_elims, 
  			:number_of_prelims, :start_date, :user_id

  belongs_to :user
  has_many :buildings, :dependent => :destroy
  has_many :rooms, :through => :buildings

end
