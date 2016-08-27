def translate (input)
  words = input.split
  vowels = ["a","e","i","o","u"]
  exceptions = "qu"
  arr = []
    words.each do |x|

    if  vowels.include? x[0]

      arr << x + "ay"
    else
      arr << consonant_helper(x)
    end
  end
  return arr.join(" ")

end



def consonant_helper (word)
  vowels = ["a","e","i","o","u"]
  consonants = ""
  remaining_vowels = ""
  vowel_index = 0
  word_char = word.split(//)
  word_char.each_with_index do |letter,index|
    if !(vowels.include? (letter)) && !(letter == "q")
      consonants += letter
    elsif (letter == "q" && word_char[index + 1] == "u")
      consonants += letter
      consonants += word_char[index + 1]
      vowel_index += index + 2
      break
    else
      vowel_index += index
      break
    end
  end
  remaining_vowels += word[(vowel_index..-1)]
  full_word = remaining_vowels + consonants + 'ay'

end
