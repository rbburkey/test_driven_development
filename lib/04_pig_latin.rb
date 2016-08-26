def translate (input)
  words = input.split(" ")
  vowels = ["a","e","i","o","u"]
  words.each do |x|
    if  vowels.include? x[0]
      return x + x[0] + "y"
    elsif (!(vowels.include? x[0]) && vowels.include? x[1])
      return x.delete(x[0]) + x[0] + "ay"
    else #!(vowels.include? x[0] && x[1])
      return x.delete(x[0]) + x[0,1] + "ay"
    end
  end
end
