ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
CAPALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
output_arr = []

def index_finder(orig_str, key, output_arr)
  orig_str.split("").each_with_index do |letter, index|
    temp_key = nil
    if ALPHABET.include?(letter) == false && CAPALPHABET.include?(letter) == false
      output_arr << letter
    elsif letter.upcase == orig_str[index] && CAPALPHABET.index(letter).to_i + key.to_i > 25 
      temp_key = CAPALPHABET.index(letter).to_i + key.to_i - 25 - 1
      output_arr << CAPALPHABET[temp_key]
    elsif letter.upcase == orig_str[index] 
      temp_key = key
      output_arr << CAPALPHABET[CAPALPHABET.index(letter).to_i + temp_key.to_i]
    elsif ALPHABET.index(letter).to_i + key.to_i > 25
      temp_key = ALPHABET.index(letter).to_i + key.to_i - 25 - 1
      output_arr << ALPHABET[temp_key]
    else
      output_arr << ALPHABET[ALPHABET.index(letter).to_i + key]
    end
  end
end

def main_method(orig_str, key, output_arr)
  system('clear')
  index_finder(orig_str, key, output_arr)
  p output_arr.join
end

puts "please input a string of text to encrypt"
orig_str = gets.chomp

puts "what is the key?"
key = gets.chomp.to_i

main_method(orig_str, key, output_arr)
