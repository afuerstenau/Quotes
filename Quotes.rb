# encoding: utf-8

class Quote
  def initialize(file)
    @quotes = Array.new
    filename = file.to_s+"quotes"
    text=File.open(filename, :encoding => "UTF-8").each(sep="\r") do |quote|
      @quotes << quote
    end
  end

  def next_quote
    @quotes[Random.new.rand(0 .. @quotes.length-1)]
  end
end
ARGV.each do|file_parameter|
  puts Quote.new(file_parameter).next_quote
end
