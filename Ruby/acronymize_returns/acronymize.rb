# ACRONYMIZE IS BACK!!!

# LIVECODE SPECS
  # Define a method that returns the acronyms of a sentence, using a stronger iterator than #each


# INFORMATION WE GOT FROM THE SPECS
  # INPUT: STRING
  # OUTPUT: STRING
  # RULES: DONT USE EACH

def acronymize(sentence)
  sentence.split(" ").map { |word| word[0].upcase }.join
end









