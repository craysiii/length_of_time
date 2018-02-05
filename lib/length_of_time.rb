require 'length_of_time/version'

class Numeric
  SECONDS_PER_MILLISECOND = 1.0 / 1000
  SECONDS_PER_SECOND      = 1
  SECONDS_PER_MINUTE      = 60
  SECONDS_PER_HOUR        = 3_600
  SECONDS_PER_DAY         = 86_400
  SECONDS_PER_WEEK        = 604_800
  SECONDS_PER_FORTNIGHT   = 1_209_600

  def millisecond
    self * SECONDS_PER_MILLISECOND
  end

  alias milliseconds millisecond

  def second
    self
  end

  alias seconds second

  def minute
    self * SECONDS_PER_MINUTE
  end

  alias minutes minute

  def hour
    self * SECONDS_PER_HOUR
  end

  alias hours hour

  def day
    self * SECONDS_PER_DAY
  end

  alias days day

  def week
    self * SECONDS_PER_WEEK
  end

  alias weeks week

  def fortnight
    self * SECONDS_PER_FORTNIGHT
  end

  alias fortnights fortnight
end