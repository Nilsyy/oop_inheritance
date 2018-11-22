require './multilinguist.rb'

class QuoteCollector < Multilinguist

  def initialize
    @quotes = []
  end

  def quotes
    @quotes
  end

  def quotes=(new_quote)
    @quotes = new_quote
  end

  def memorize_quote(quote)
    @quotes << quote
    return quote
  end

  def select_random_quote
    return @quotes.sample
  end

end

sanna = QuoteCollector.new

sanna.memorize_quote("I love money.")
sanna.memorize_quote("I'm amazing too!")
sanna.memorize_quote("Hi I'm your best friend!")
puts sanna.inspect
puts sanna.select_random_quote
