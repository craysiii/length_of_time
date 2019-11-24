RSpec.describe Range do
  context 'Method definitions' do
    it 'responds to #milliseconds' do
      expect((1..2)).to respond_to :milliseconds
    end

    it 'responds to #seconds' do
      expect((1..2)).to respond_to :seconds
    end

    it 'responds to #minutes' do
      expect((1..2)).to respond_to :minutes
    end

    it 'responds to #hours' do
      expect((1..2)).to respond_to :hours
    end

    it 'responds to #days' do
      expect((1..2)).to respond_to :days
    end

    it 'responds to #weeks' do
      expect((1..2)).to respond_to :weeks
    end

    it 'responds to #fortnights' do
      expect((1..2)).to respond_to :fortnights
    end
  end


end