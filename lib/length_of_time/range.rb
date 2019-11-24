# Monkey patching is bad but we do it anyway
class Range
  Numeric::TIME.each_key do |method|
    define_method(method) do
      map { |number| number * Numeric::TIME[method] }
    end
  end
end