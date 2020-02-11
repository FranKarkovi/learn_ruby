class Timer
  def initialize()
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds=(sec)
    @seconds = sec % 60
    self.minutes = sec / 60
  end

  def seconds
    @seconds
  end

  def minutes=(min)
    @minutes = min % 60
    self.hours = min / 60
  end

  def minutes
    @minutes
  end

  def hours=(hr)
    @hours = hr
  end

  def hours
    @hours
  end

  def time_string
    formatted_hours = "%02d" % [@hours]
    formatted_minutes = "%02d" % [@minutes]
    formatted_seconds = "%02d" % [@seconds]
    "#{formatted_hours}:#{formatted_minutes}:#{formatted_seconds}"
  end
end
