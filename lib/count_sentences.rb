require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    puts self
    letter_arr = self.split("")
    count = 0
    temp = ""
    letter_arr.each do |letter|
      if (letter === "?")&&(letter != temp)
        count = count + 1
      elsif (letter === ".")&&(letter != temp)
        count = count + 1

      elsif (letter === "!")&&(letter != temp)
        count = count + 1
      end
      temp = letter
    end
    count
  end
end