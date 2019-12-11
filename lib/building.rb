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
    # add them together, and divide by the number of units
    (rents.sum) / @units.count
  end

  def renter_with_highest_rent
    # look through all units find those which are rented
    rented_units = @units.find_all do |unit|
      unit.renter != nil
    end
    # look through each rented unit, and find the highest monthly rent
    highest_rent = rented_units.max_by do |unit|
      unit.monthly_rent
    end
    # return the highest rent out of those rented
    highest_rent.renter
  end

end
