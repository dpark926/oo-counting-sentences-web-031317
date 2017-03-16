require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    array = self.split(" ")

    count = 0
    array.each do |word|
      if word[-1] == "." || word[-1] == "!" || word[-1] == "?"
        count += 1
      end
    end

    return count
  end
end
