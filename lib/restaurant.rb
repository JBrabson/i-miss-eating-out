class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
    @dishes = []
  end

  # def closing_time(hours_of_operation)
  #   (@opening_time.to_i + hours_of_operation).to_s + ":00"
  # end
  #
  def closing_time(hours_of_operation)
    close = (@opening_time.to_i + hours_of_operation)
    if close > 24
      then "0#{close - 24}:00"
    else
      "#{close}:00"
    end
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i < 12
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(hours_open)
    close = @opening_time.to_i + hours_open
    if close > 12
      close -= 12
      "#{name} will be closing at #{close}:00PM"
    else
    "#{name} will be closing at #{close}:00AM"
    end
  end
end
