# Your code goes here!
class Anagram
  attr_accessor :letters, :word
  def initialize(word)
    @word = word
    @letters = word.scan(/\w/).sort
  end
  def match(words)
    matches = []
    words.select { |word| @letters.length == word.length}.collect { |word| word.scan(/\w/) }.each { |word| matches << word.join if word.sort == @letters }
    matches
  end
end
