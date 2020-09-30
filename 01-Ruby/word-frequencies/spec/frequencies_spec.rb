require_relative '../frequencies'

describe '#frequencies' do
  it "RETURN AN EMPTY HASH IF YOU GOT AN EMPTY STRING" do
    actual = frequencies("")
    expected = {}

    expect(actual).to eq(expected)
  end

    it "RETURN THE CORRECT HISTOGRAM IF GIVEN A STRING" do
    actual = frequencies("i know my friends but they are not my friends")
    expect(actual["friends"]).to eq(2)
    expect(actual["my"]).to eq(2)
    expect(actual["but"]).to eq(1)
    expect(actual["potato"]).to eq(0)
  end
end
