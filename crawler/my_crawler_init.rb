require 'rubygems'
require 'nokogiri'
require 'open-uri'

class MyCrawler
  
  def initialize()
    @total_input = 0
  end
  
  def get_input_count(url, depth=3, page_limit = 50)
    next_urls = [url]
    already_visited = {}
    current_page_hrefs = []
       
    depth.times do |n|

      break if next_urls.empty?
      
      next_urls.each do |url|
        break if already_visited.size == page_limit
        
        already_visited[url] = true 
        
        puts "Page Count: #{already_visited.size}"
        puts "Current URL: #{url}"
        
        unless is_valid_url(url)
          puts "Web URL is not valid."
        end

        url_object = read_page_content(url) 
        
        current_page_hrefs = url_object.css('a').collect {|a| a['href']} unless url_object == nil
        
        page_inputs_count = url_object.css('input').count
        
        puts "Page Inputs: #{page_inputs_count}"
        
        @total_input += page_inputs_count
        
        next_urls = ( current_page_hrefs - already_visited.keys)
        
        next_urls.uniq!
        
        break if next_urls.empty?
      end      
    end
    
    puts "\n\nTotal no of inputs: #{@total_input}" 
  end
  
  private
   
  def is_valid_url(url)
    (url =~ URI::regexp).nil? ? false : true
  end
  
  def read_page_content(url)
    Nokogiri::HTML(open(url)) rescue Nokogiri::HTML.fragment("")
  end  
end