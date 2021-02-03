class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
    @dishes = []
  end

  def closing_time(hours_of_operation)
    (@opening_time.to_i + hours_of_operation).to_s + ":00"
  end
end
