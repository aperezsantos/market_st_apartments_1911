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
    @units.map do |unit|
      unit.monthly_rent
    end
    # add them together
    # devide them by the number of objects

  end
end
