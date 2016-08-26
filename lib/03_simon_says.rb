def echo (input)
  return input
end


def shout (input)
  return input.upcase
end


def repeat (input, *n)
  arr = []
  if n[0] == nil
    return input + " " + input
  else
    result = (input + " ")  * n[0]
    return result.chop!
  end
end


def start_of_word (input, *num)
  result = ""
  num.each do |n|
    g = n - 1
    result << input[(0..g)]
  end
  return result
end


def first_word (input)
  result = input.split(" ").first
end

def titleize(input)
    input.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    sentence = input.split(" ").map {|word|
        if words_no_cap.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ") 
  sentence
end
