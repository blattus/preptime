class Event < ActiveRecord::Base
  attr_accessible :division, :entry_fee, :is_flighted, :is_team, :name, :number_of_elims, :number_of_prelims, :type
end
