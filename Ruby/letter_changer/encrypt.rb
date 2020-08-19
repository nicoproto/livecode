# LIVECODE SPECS
  # Write an #encrypt method that takes a text parameter (string) and makes a 3-letter left shift in the alphabet

# WHAT INFORMATION WE GOT FROM THE SPECS?
  # INPUT: STRING
  # OUTPUT: STRING

def encrypt(sentence, password = -3)
  # DEFINE AN ARRAY WITH THE RANGE A TO Z
  alphabet = ("A".."Z").to_a
  # SPLIT THE SENTENCE
  sentence.split("").map do |char|
    # CHECK LETTER AND CHANGE IT
    index = alphabet.index(char)
    index.nil? ? char : alphabet[index + password]
  end.join
  # join an return the result
end

