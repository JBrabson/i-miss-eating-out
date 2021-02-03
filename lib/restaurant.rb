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
    close = (@opening_time.to_i + hours_of_operation).to_s + ":00"
  end

  # def closing_time(hours_of_operation)
  #   close = (@opening_time.to_i + hours_of_operation).to_s + ":00"
  #   if close.to_i >= 24
  #     (close.to_i - 24).to_s + ":00"
  #   else
  #     close
  #   end
  # end
end
