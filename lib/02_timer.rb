class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    "#{padded(hours)}:#{padded(minutes)}:#{padded(minute_seconds)}"
  end

  def padded(num)
    num > 10 ? "#{num}" : "0#{num}"
  end

  def hours
    Integer(seconds / 3600)
  end

  def minutes
    Integer((seconds % 3600) / 60)
  end

  def minute_seconds
    Integer((seconds % 60))
  end
end
