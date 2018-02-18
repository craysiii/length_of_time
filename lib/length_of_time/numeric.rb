class Numeric
  TIME = {
    milliseconds: 1.0 / 1000,
    seconds:      1.0,
    minutes:      60.0,
    hours:        3_600.0,
    days:         86_400.0,
    weeks:        604_800.0,
    fortnights:   1_209_600.0
  }.freeze

  TIME.each_key do |method|
    define_method(method) do |opt = { in: :seconds }|
      self * TIME[method] / TIME[opt[:in]]
    end
    alias_method method.to_s.chop, method
  end
end
