# "1 84 12 76 451 089 46"
# "a man, born in December, 1984 in Seine-Maritime."

require_relative '../french_ssn'

describe "#french_ssn" do
  it "should return a message when given an empty string" do
    actual = french_ssn("")
    expected = "That's not a SSN number"
    expect(actual).to eq(expected)
  end

  it "should return a message the correct message" do
    actual = french_ssn("1 84 12 76 451 089 46")
    expected = "a man, born in December, 1984 in Seine-Maritime."
    expect(actual).to eq(expected)
  end
end


require_relative "../french_ssn"

describe "#french_ssn_info" do
  it "returns 'The number is invalid' when passed an empty string" do
    actual = french_ssn_info("")
    expected = "The number is invalid"
    expect(actual).to eq(expected)
  end

  it "returns 'a man, born in December, 1984 in Seine-Maritime.' when passed '1 84 12 76 451 089 46'" do
    actual = french_ssn_info("1 84 12 76 451 089 46")
    expected = "a man, born in December, 1984 in Seine-Maritime."
    expect(actual).to eq(expected)
  end
end
