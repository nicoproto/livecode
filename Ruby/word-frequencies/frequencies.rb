# WORD FREQUENCiES (SPECS)
  # Write a program that reads from a text file and compute the histogram of word frequencies in this text.

# WHAT WE GOT FROM THE SPECS
  # INPUT: TEXT FILE / STRING
  # OUTUP: HASH WITH KEY: WORD AND VALUE: FREQUENCE

def frequencies(string)
  # split the string
  cool_wordz = string.split(" ")
  # create hash that is empty add symbols
  cool_hash = Hash.new(0)
  # iterate through #each method on each word
  cool_wordz.each do |word|
    # within the each word add the same word to a counter
    cool_hash[word] += 1
  end
  # return hash map
  cool_hash
end

def read_file(path)
  File.open(path).read.strip
end




