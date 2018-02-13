# Length Of Time

A miniature DSL for describing lengths of time. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'length_of_time'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install length_of_time

## Usage

Require the gem:

```ruby
require 'length_of_time'
```

Use the various methods that we monkey-patch onto Numeric:

```ruby
# Default unit to return is :seconds
puts 10.minutes # => 600.0

# Can also convert into other units of time
puts 7.days in: :weeks # => 1.0

# Return Floats so that unit conversion does not suffer from Integer division
puts 10.days in: :weeks # => 1.4285714285714286

# Method calls on Numeric literals can be either singular or plural
puts 1.hour # => 3600.0
puts 2.hours # => 7200.0

# When converting into another unit of time, unit must be plural
puts 500.milliseconds in: :minutes # Correct
puts 750.milliseconds in: :minute # Incorrect - will give an error

# Full list of units supported:
# Singular [:millisecond, :second, :minute, :hour, :day, :week, :fortnight]
# Plural [:milliseconds, :seconds, :minutes, :hours, :days, :weeks, :fortnights] 
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/craysiii/length_of_time.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
