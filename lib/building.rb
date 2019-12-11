class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit_name)
    @units << unit_name
  end

  def average_rent
    # look at each unit's rent (iterate)
    rents = @units.map do |unit|
      unit.monthly_rent.to_f
    end
    # require "pry"; binding.pry
    # add them together, and divide by the number of units
    (rents.sum) / @units.count
  end

end
