
require_relative '../spy'

describe Spy do
  describe '#license_to_kill?' do
    it 'should return true if older than 21 years' do
      spy = Spy.new('james', 'bond', 45)
      expect(spy.license_to_kill?).to eq(true)
    end

    it 'should return false if less than 21 years' do
      spy = Spy.new('james', 'bond', 20)
      expect(spy.license_to_kill?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'should return capitalized name in sentence' do
      spy = Spy.new('jAmEs', 'bOnD', 20)
      expect(spy.full_name).to eq("My name is Bond, James Bond")
    end
  end


end
