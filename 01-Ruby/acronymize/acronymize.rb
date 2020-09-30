# WTF IS AN ACRONYM?
# Write a method that returns the acronym of a sentence.

#Transform the string into an array
#Get the first letter from each element in the array
#Push into a string
#Return the new string

def acronym(string)
henry = ""
  if string.class != Integer
    words = string.split
    words.each do |x|
      henry += x[0]
    end
    return henry
  else
    return "Incorrect input"
  end
end


puts acronym("Hey That’s My Lunch") == "HTML"

puts acronym("") == ""

puts acronym(3) == "Incorrect input"


# ACRONYM = Alphabetical Code for Remembering Odd Names You Make up
# HTTP — Head To This Page
# IBM - I Blame Microsoft
# HTML - Hey That’s My Lunch
# PHT - Pretty Hot Programmer
