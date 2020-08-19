# ACRONYM = Alphabetical Code for Remembering Odd Names You Make up
# HTTP — Head To This Page
# IBM - I Blame Microsoft
# HTML - Hey That’s My Lunch
# PHT - Pretty Hot Programmer

require_relative "../acronymize"

describe "#acronymize" do
  it "should return empty string when empty string given" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected)
  end

  it "should return the acronym when not empty" do
    actual = acronymize("Hey That’s My Lunch")
    expected = "HTML"
    expect(actual).to eq(expected)
  end
end
