CAPALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
LOWALPHABET = 'abcdefghijklmnopqrstuvwxyz'
output_array = []


puts "What is your string?"
str = gets.chomp

puts "What is your shift?"
shift = gets.chomp.to_i

def string_splitter (str, shift, output_array)
  split_string = str.split("")
  shifter(split_string, shift, output_array)
end

def shifter (split_string, shift, output_array)
  split_string.each do |letter|
    if CAPALPHABET.include?(letter) == false && LOWALPHABET.include?(letter) == false
      output_array << letter
    elsif letter.upcase == letter && (CAPALPHABET.index(letter) + shift.to_i) > 25
      newLetter = CAPALPHABET[CAPALPHABET.index(letter) + shift.to_i - 26]
      output_array << newLetter
    elsif letter.upcase == letter && (CAPALPHABET.index(letter) + shift.to_i) < 25
      newLetter = CAPALPHABET[CAPALPHABET.index(letter) + shift.to_i]
      output_array << newLetter
    elsif (LOWALPHABET.index(letter) + shift.to_i) > 25
      newLetter = LOWALPHABET[LOWALPHABET.index(letter) + shift.to_i - 26]
      output_array << newLetter
    else
      newLetter = LOWALPHABET[LOWALPHABET.index(letter) + shift.to_i]
      output_array << newLetter
    end
  end
  puts output_array.join("")
end

def run_cipher(str, shift, output_array)
  string_splitter(str, shift, output_array)
end

run_cipher(str, shift, output_array)
