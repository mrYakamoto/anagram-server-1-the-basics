class Word < ActiveRecord::Base

  def self.get_anagrams(word)
    word_to_check = word.downcase.split("").sort.join
    Word.where(sorted: word_to_check).pluck(:word)
  end

end
