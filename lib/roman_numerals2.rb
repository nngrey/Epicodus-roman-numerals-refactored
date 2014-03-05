def numeral_converter(number)
  converted_number = []
  roman_numeral_hash = 
  { "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5, 
    "IV" => 4,                        
    "I" => 1 }
    
  if number > 3999
    converted_number.push("Please enter a numer less than 4000")
  else
    roman_numeral_hash.each do |letter, digit|
      while number >= digit 
          converted_number << letter
          number = number - digit
      end
    end
  end  
    converted_number.join
end

puts numeral_converter(5000)
