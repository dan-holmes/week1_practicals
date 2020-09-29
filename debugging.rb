# 1

def say_hello(name)
  "hello #{name}"
end

# 2

def encode(plaintext, key)
  cipher = key.chars.uniq + (("a".."z").to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (("a".."z").to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  plaintext_chars.join
end

# Interlude: getting visibility #

def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
    n -= 1
  end
  product
end


# 4. #

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
# When creating your alphabet array make sure to use '..' to create
# the range. '...' doesn't include the first and last letters
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65] # You must take 65 away from the ord of the char.
                          # This removes the first 65 encoding characters which
                          # are mainly punctuation, and starts it at the letter 'a'
  end
  plaintext_chars.join
end

# puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")