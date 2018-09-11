class Quote
  def initialize(file)
    @quotes = []
    filename = file.to_s + 'quotes.txt'
    File.open(filename, encoding: 'UTF-8').each("\r") do |quote|
      quote=quote.delete("\n")
      @quotes << quote
    end
  end

  def next_quote
    'Quote of the day: ' + @quotes[Random.new.rand(0..@quotes.length - 1)]
  end
end

ARGV.each do |file_parameter|
  print Quote.new(file_parameter).next_quote.chomp
end
