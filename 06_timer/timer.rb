class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    Time.at(seconds).utc.strftime("%H:%M:%S")
  end

end

#alternative solution -->
# class Timer
#   attr_accessor :seconds
#
#   def initialize
#     @seconds = 0
#   end
#
#   def time_string
#     hours = seconds / 3600
#     remainder = seconds % 3600
#     sprintf("%02d:%02d:%02d", hours, remainder / 60, remainder % 60)
#   end
#
# end
