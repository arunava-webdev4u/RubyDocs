# We are not making the String class from scratch
class String
  # Let's say we have a method to filter out sensitive words
  def sensor (bad_word)
    self.gsub "#{bad_word}", "CENSORED"
  end
  # Now every string for the rest of the program will have access to this method


  # A more real example methods
  def vowels
    self.split("").filter { |x| x == 'a' or x == 'e' or x == 'i'or x == 'o' or x == 'u' }
  end
  def consonants
    self.split("").filter { |x| not (x == 'a' or x == 'e' or x == 'i'or x == 'o' or x == 'u') }
  end
end


p "Testing with me is good, with testing can by harmful and deadly".sensor("deadly")

p "Testing with me is good, with testing can by harmful and deadly".vowels
p "Testing with me is good, with testing can by harmful and deadly".consonants
