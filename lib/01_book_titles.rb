class Book
  LOWER_WORDS = [
    "the",
    "a",
    "an",
    "and",
    "in",
    "of"
  ]
  
  attr_reader :title

  def title=(title)
    title_words = title.split(" ").map(&:downcase)

    new_words = title_words.map.with_index do |word, idx|
      LOWER_WORDS.include?(word) && idx != 0 ? word : word.capitalize
    end
    @title = new_words.join(" ")
  end
end
