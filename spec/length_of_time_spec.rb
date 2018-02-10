RSpec.describe Numeric do
  it 'has a version number' do
    expect(LengthOfTime::VERSION).not_to be nil
  end

  context 'Method definitions' do
    it 'respond to #millisecond' do
      expect(1).to respond_to :millisecond
    end

    it 'respond to #second' do
      expect(1).to respond_to :second
    end

    it 'respond to #minute' do
      expect(1).to respond_to :minute
    end

    it 'respond to #hour' do
      expect(1).to respond_to :hour
    end

    it 'respond to #day' do
      expect(1).to respond_to :day
    end

    it 'respond to #week' do
      expect(1).to respond_to :week
    end

    it 'respond to #fortnight' do
      expect(1).to respond_to :fortnight
    end
  end

  context 'Method aliases' do
    it 'include an alias for #milliseconds' do
      expect(1).to respond_to :milliseconds
    end

    it 'include an alias for #seconds' do
      expect(1).to respond_to :seconds
    end

    it 'include an alias for #minutes' do
      expect(1).to respond_to :minutes
    end

    it 'include an alias for #hours' do
      expect(1).to respond_to :hours
    end

    it 'include an alias for #days' do
      expect(1).to respond_to :days
    end

    it 'include an alias for #weeks' do
      expect(1).to respond_to :weeks
    end

    it 'include an alias for #fortnights' do
      expect(1).to respond_to :fortnights
    end
  end

  context 'Unit definitions' do
    it 'give the correct amount of seconds in a millisecond' do
      expect(1.millisecond).to eq Numeric::SECONDS_PER_MILLISECOND
    end

    it 'give the correct amount of seconds in a second' do
      expect(1.second).to eq Numeric::SECONDS_PER_SECOND
    end

    it 'give the correct amount of seconds in a minute' do
      expect(1.minute).to eq Numeric::SECONDS_PER_MINUTE
    end

    it 'give the correct amount of seconds in a hour' do
      expect(1.hour).to eq Numeric::SECONDS_PER_HOUR
    end

    it 'give the correct amount of seconds in a day' do
      expect(1.day).to eq Numeric::SECONDS_PER_DAY
    end

    it 'give the correct amount of seconds in a week' do
      expect(1.week).to eq Numeric::SECONDS_PER_WEEK
    end

    it 'give the correct amount of seconds in a fortnight' do
      expect(1.fortnight).to eq Numeric::SECONDS_PER_FORTNIGHT
    end
  end

  context 'Constant Proportionality' do
    it 'correctly defines 0.001 seconds as 1 millisecond' do
      expect(0.001.seconds).to eq 1.millisecond
    end

    it 'correctly defines 1000 milliseconds as 1 second' do
      expect(1000.milliseconds).to eq 1.second
    end

    it 'correctly defines 60 seconds as 1 minute' do
      expect(60.seconds).to eq 1.minute
    end

    it 'correctly defines 60 minutes as 1 hour' do
      expect(60.minutes).to eq 1.hour
    end

    it 'correctly defines 24 hours as 1 day' do
      expect(24.hours).to eq 1.day
    end

    it 'correctly defines 7 days as 1 week' do
      expect(7.days).to eq 1.week
    end

    it 'correctly defines 2 weeks as 1 fortnight' do
      expect(2.weeks).to eq 1.fortnight
    end
  end

  context 'Integers' do
    it 'give the correct amount of seconds in 5 milliseconds' do
      expect(5.milliseconds).to eq Numeric::SECONDS_PER_MILLISECOND * 5
    end

    it 'give the correct amount of seconds in 5 seconds' do
      expect(5.seconds). to eq Numeric::SECONDS_PER_SECOND * 5
    end

    it 'give the correct amount of seconds in 5 minutes' do
      expect(5.minutes).to eq Numeric::SECONDS_PER_MINUTE * 5
    end

    it 'give the correct amount of seconds in 5 hours' do
      expect(5.hours).to eq Numeric::SECONDS_PER_HOUR * 5
    end

    it 'give the correct amount of seconds in 5 days' do
      expect(5.day).to eq Numeric::SECONDS_PER_DAY * 5
    end

    it 'give the correct amount of seconds in 5 weeks' do
      expect(5.weeks).to eq Numeric::SECONDS_PER_WEEK * 5
    end

    it 'give the correct amount of seconds in 5 fortnights' do
      expect(5.fortnights).to eq Numeric::SECONDS_PER_FORTNIGHT * 5
    end
  end

  context 'Floats' do
    it 'give the correct amount of seconds in 1.5 milliseconds' do
      expect(1.5.milliseconds).to eq Numeric::SECONDS_PER_MILLISECOND * 1.5
    end

    it 'give the correct amount of seconds in 1.5 seconds' do
      expect(1.5.seconds).to eq Numeric::SECONDS_PER_SECOND * 1.5
    end

    it 'give the correct amount of seconds in 1.5 minutes' do
      expect(1.5.minutes).to eq Numeric::SECONDS_PER_MINUTE * 1.5
    end

    it 'give the correct amount of seconds in 1.5 hours' do
      expect(1.5.hours).to eq Numeric::SECONDS_PER_HOUR * 1.5
    end

    it 'give the correct amount of seconds in 1.5 days' do
      expect(1.5.days).to eq Numeric::SECONDS_PER_DAY * 1.5
    end

    it 'give the correct amount of seconds in 1.5 weeks' do
      expect(1.5.weeks).to eq Numeric::SECONDS_PER_WEEK * 1.5
    end

    it 'give the correct amount of seconds in 1.5 fortnights' do
      expect(1.5.fortnights).to eq Numeric::SECONDS_PER_FORTNIGHT * 1.5
    end
  end

  context 'Unit conversions' do
    it 'give the correct amount of milliseconds in 5 seconds' do
      expect(5.seconds(into: :milliseconds)).to eq 5000
    end

    it 'give the correct amount of seconds in 1 millisecond' do
      expect(1.millisecond(into: :seconds)).to eq 0.001
    end

    it 'give the correct amount of seconds in 60 minutes' do
      expect(60.minutes(into: :seconds)).to eq 3600
    end

    it 'give the correct amount of minutes in 60 seconds' do
      expect(60.seconds(into: :minutes)).to eq 1
    end

    it 'give the correct amount of minutes in 2 hours' do
      expect(2.hour(into: :minutes)).to eq 120
    end

    it 'give the correct amount of hours in 2 days' do
      expect(2.days(into: :hours)).to eq 48
    end

    it 'give the correct amount of days in 1.5 weeks' do
      expect(1.5.weeks(into: :days)).to eq 10.5
    end

    it 'give the correct amount of weeks in 2 fortnights' do
      expect(2.fortnights(into: :weeks)).to eq 4
    end
  end
end
