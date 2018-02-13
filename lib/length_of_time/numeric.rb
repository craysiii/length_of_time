class Numeric
  SECONDS_PER_MILLISECOND = 1.0 / 1000
  SECONDS_PER_SECOND      = 1.0
  SECONDS_PER_MINUTE      = 60.0
  SECONDS_PER_HOUR        = 3_600.0
  SECONDS_PER_DAY         = 86_400.0
  SECONDS_PER_WEEK        = 604_800.0
  SECONDS_PER_FORTNIGHT   = 1_209_600.0

  TIME = {
    milliseconds: SECONDS_PER_MILLISECOND,
    seconds:      SECONDS_PER_SECOND,
    minutes:      SECONDS_PER_MINUTE,
    hours:        SECONDS_PER_HOUR,
    days:         SECONDS_PER_DAY,
    weeks:        SECONDS_PER_WEEK,
    fortnights:   SECONDS_PER_FORTNIGHT
  }.freeze

  TIME.each_key do |method|
    define_method(method) do |opt = { in: :seconds }|
      self * TIME[method] / TIME[opt[:in]]
    end
    alias_method method.to_s.chop, method
  end
end
