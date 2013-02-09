class Tournament < ActiveRecord::Base
  attr_accessible :end_date, :location, :name, :number_of_elims, :number_of_prelims, :start_date

  def to_param
  	tournament_name.parameterize
  end

end
