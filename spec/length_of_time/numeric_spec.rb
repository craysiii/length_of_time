RSpec.describe Numeric do
  let(:millisecond) { Numeric::TIME[:milliseconds] }
  let(:second)      { Numeric::TIME[:seconds] }
  let(:minute)      { Numeric::TIME[:minutes] }
  let(:hour)        { Numeric::TIME[:hours] }
  let(:day)         { Numeric::TIME[:days] }
  let(:week)        { Numeric::TIME[:weeks] }
  let(:fortnight)   { Numeric::TIME[:fortnights] }

  context 'Method definitions' do
    it 'respond to #milliseconds' do
      expect(1).to respond_to :milliseconds
    end

    it 'respond to #seconds' do
      expect(1).to respond_to :seconds
    end

    it 'respond to #minutes' do
      expect(1).to respond_to :minutes
    end

    it 'respond to #hours' do
      expect(1).to respond_to :hours
    end

    it 'respond to #days' do
      expect(1).to respond_to :days
    end

    it 'respond to #weeks' do
      expect(1).to respond_to :weeks
    end

    it 'respond to #fortnights' do
      expect(1).to respond_to :fortnights
    end
  end

  context 'Method aliases' do
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

  context 'Unit definitions' do
    it 'give the correct amount of seconds in a millisecond' do
      expect(1.millisecond).to eq millisecond
    end

    it 'give the correct amount of seconds in a second' do
      expect(1.second).to eq second
    end

    it 'give the correct amount of seconds in a minute' do
      expect(1.minute).to eq minute
    end

    it 'give the correct amount of seconds in a hour' do
      expect(1.hour).to eq hour
    end

    it 'give the correct amount of seconds in a day' do
      expect(1.day).to eq day
    end

    it 'give the correct amount of seconds in a week' do
      expect(1.week).to eq week
    end

    it 'give the correct amount of seconds in a fortnight' do
      expect(1.fortnight).to eq fortnight
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
      expect(5.milliseconds).to eq millisecond * 5
    end

    it 'give the correct amount of seconds in 5 seconds' do
      expect(5.seconds). to eq second * 5
    end

    it 'give the correct amount of seconds in 5 minutes' do
      expect(5.minutes).to eq minute * 5
    end

    it 'give the correct amount of seconds in 5 hours' do
      expect(5.hours).to eq hour * 5
    end

    it 'give the correct amount of seconds in 5 days' do
      expect(5.day).to eq day * 5
    end

    it 'give the correct amount of seconds in 5 weeks' do
      expect(5.weeks).to eq week * 5
    end

    it 'give the correct amount of seconds in 5 fortnights' do
      expect(5.fortnights).to eq fortnight * 5
    end
  end

  context 'Floats' do
    it 'give the correct amount of seconds in 1.5 milliseconds' do
      expect(1.5.milliseconds).to eq millisecond * 1.5
    end

    it 'give the correct amount of seconds in 1.5 seconds' do
      expect(1.5.seconds).to eq second * 1.5
    end

    it 'give the correct amount of seconds in 1.5 minutes' do
      expect(1.5.minutes).to eq minute * 1.5
    end

    it 'give the correct amount of seconds in 1.5 hours' do
      expect(1.5.hours).to eq hour * 1.5
    end

    it 'give the correct amount of seconds in 1.5 days' do
      expect(1.5.days).to eq day * 1.5
    end

    it 'give the correct amount of seconds in 1.5 weeks' do
      expect(1.5.weeks).to eq week * 1.5
    end

    it 'give the correct amount of seconds in 1.5 fortnights' do
      expect(1.5.fortnights).to eq fortnight * 1.5
    end
  end

  context 'Unit conversions' do
    it 'give the correct amount of milliseconds in 5 seconds' do
      expect(5.seconds(in: :milliseconds)).to eq 5000
    end

    it 'give the correct amount of seconds in 1 millisecond' do
      expect(1.millisecond(in: :seconds)).to eq 0.001
    end

    it 'give the correct amount of seconds in 60 minutes' do
      expect(60.minutes(in: :seconds)).to eq 3600
    end

    it 'give the correct amount of minutes in 60 seconds' do
      expect(60.seconds(in: :minutes)).to eq 1
    end

    it 'give the correct amount of minutes in 2 hours' do
      expect(2.hour(in: :minutes)).to eq 120
    end

    it 'give the correct amount of hours in 2 days' do
      expect(2.days(in: :hours)).to eq 48
    end

    it 'give the correct amount of weeks in 12 days' do
      expect(12.days(in: :weeks)).to eq 12.0 / 7
    end

    it 'give the correct amount of days in 1.5 weeks' do
      expect(1.5.weeks(in: :days)).to eq 10.5
    end

    it 'give the correct amount of weeks in 2 fortnights' do
      expect(2.fortnights(in: :weeks)).to eq 4
    end
  end
end
