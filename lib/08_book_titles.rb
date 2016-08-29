class Book
  attr_accessor :title

  def title
    conjuctions_and_prep = ["a", "an", "and", "in", "the", "of"]
    all_cap = @title.split.map do |x|
      if conjuctions_and_prep.include? x
        x.downcase
      else
        x.capitalize
      end
    end
    all_cap[0].capitalize!
    @title = all_cap.join(" ")
  end
end
