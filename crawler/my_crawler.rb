require_relative 'my_crawler_init'

# https://enaming.com

unless ARGV[0].nil?
  crawler = MyCrawler.new
  crawler.get_input_count(ARGV[0])
else
  puts "Web page should not be empty."
end