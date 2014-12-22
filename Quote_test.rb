# encoding: utf-8

require_relative "quotes"
require "minitest/autorun"

class Quote_test < MiniTest::Unit::TestCase

  def test_simple
    quotes = Quote.new("")
    quote = quotes.next_quote
    refute_equal(quote, quotes.next_quote)
  end

end
