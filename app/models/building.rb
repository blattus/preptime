class Building < ActiveRecord::Base
  attr_accessible :code, :distance_from_tab, :name, 
  			:tournament_id

  belongs_to :tournament
  has_many :rooms, :dependent => :destroy


end
