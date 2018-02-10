require 'length_of_time/version'

class Numeric
  SECONDS_PER_MILLISECOND = 1.0 / 1000
  SECONDS_PER_SECOND      = 1
  SECONDS_PER_MINUTE      = 60
  SECONDS_PER_HOUR        = 3_600
  SECONDS_PER_DAY         = 86_400
  SECONDS_PER_WEEK        = 604_800
  SECONDS_PER_FORTNIGHT   = 1_209_600

  LENGTHS_OF_TIME = {
    milliseconds: SECONDS_PER_MILLISECOND,
    seconds: SECONDS_PER_SECOND,
    minutes: SECONDS_PER_MINUTE,
    hours: SECONDS_PER_HOUR,
    days: SECONDS_PER_DAY,
    weeks: SECONDS_PER_WEEK,
    fortnights: SECONDS_PER_FORTNIGHT
  }.freeze

  def millisecond(into: :seconds)
    self * SECONDS_PER_MILLISECOND / LENGTHS_OF_TIME[into]
  end

  alias milliseconds millisecond

  def second(into: :seconds)
    self * SECONDS_PER_SECOND / LENGTHS_OF_TIME[into]
  end

  alias seconds second

  def minute(into: :seconds)
    self * SECONDS_PER_MINUTE / LENGTHS_OF_TIME[into]
  end

  alias minutes minute

  def hour(into: :seconds)
    self * SECONDS_PER_HOUR / LENGTHS_OF_TIME[into]
  end

  alias hours hour

  def day(into: :seconds)
    self * SECONDS_PER_DAY / LENGTHS_OF_TIME[into]
  end

  alias days day

  def week(into: :seconds)
    self * SECONDS_PER_WEEK / LENGTHS_OF_TIME[into]
  end

  alias weeks week

  def fortnight(into: :seconds)
    self * SECONDS_PER_FORTNIGHT / LENGTHS_OF_TIME[into]
  end

  alias fortnights fortnight
end