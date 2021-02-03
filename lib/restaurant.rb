class Restaurant
  attr_reader :opening_time,
              :name

  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
  end
end
