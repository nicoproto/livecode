# DECRYPT THE ADVICE
encrypted_advice = "XITXVP ZLAB XP FC QEB DRV TEL BKAP RM JXFKQXFKFKD VLRO ZLAB TFII YB X SFLIBKQ MPVZELMXQE TEL HKLTP TEBOB VLR IFSB."

def encrypt(sentence, password = -3)
  # DEFINE AN ARRAY WITH THE RANGE A TO Z
  alphabet = ("A".."Z").to_a
  # SPLIT THE SENTENCE
  sentence.split("").map do |char|
    # CHECK LETTER AND CHANGE IT
    index = alphabet.index(char)
    index.nil? ? char : alphabet[(index + password) % 26]
  end.join
  # join an return the result
end

puts encrypt(encrypted_advice, 3)
