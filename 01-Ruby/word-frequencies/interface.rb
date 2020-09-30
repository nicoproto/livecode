require_relative 'frequencies'

string = read_file('dummy.txt')
words_hash = frequencies(string)

words_array = words_hash.sort_by { |pineapple, mango| mango }.reverse

words_array.each do |w, f|
  print w + ": "
  puts f
end
