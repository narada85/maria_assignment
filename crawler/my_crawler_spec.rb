require_relative 'my_crawler_init'

require 'rspec'
require 'nokogiri'

describe 'MyCrawler' do

  let(:root_page_path) { 'http://root.com' }
  let(:inner_page1_path) { 'http://root/sub_page1.com' }
  let(:inner_page2_path) { 'http://root/sub_page2.com' }
  let(:inner_page3_path) { 'http://root/sub_page3.com' }

  let(:root_page_body) {
    Nokogiri::HTML.fragment("#{10.times.map{ |n| "<input id=\"gender_male\" name=\"gender#{n}\" type=\"radio\" value=\"male\" />"}.join("<br/>")}
                             <a href=\"#{inner_page1_path}\">Page Link</a>
                             <a href=\"#{inner_page2_path}\">Page Link</a>")
  }
  
  let(:inner_page1_body) {
    Nokogiri::HTML.fragment("<a href=\"#{inner_page2_path}\">Page Link</a>")
  }
  
  let(:inner_page2_body) {
    Nokogiri::HTML.fragment("<a href=\"#{inner_page3_path}\">Page Link</a>")
  }
  
  let(:inner_page3_body) { 
    Nokogiri::HTML.fragment("<input id=\"accept\" name=\"accept\" type=\"checkbox\" value=\"1\" />
                             <input id=\"accept\" name=\"accept\" type=\"checkbox\" value=\"1\" />
                             <input id=\"accept\" name=\"accept\" type=\"checkbox\" value=\"1\" />
                             <input id=\"accept\" name=\"accept\" type=\"checkbox\" value=\"1\" />
                             <input id=\"accept\" name=\"accept\" type=\"checkbox\" value=\"1\" />
                             <input id=\"accept\" name=\"accept\" type=\"checkbox\" value=\"1\" />")
  }

  describe 'get_input_count' do
    before do
      @my_crawler_obj = MyCrawler.new

      allow(@my_crawler_obj).to receive(:read_page_content).with(root_page_path).and_return(root_page_body)
      allow(@my_crawler_obj).to receive(:read_page_content).with(inner_page1_path).and_return(inner_page1_body)
      allow(@my_crawler_obj).to receive(:read_page_content).with(inner_page2_path).and_return(inner_page2_body)
      allow(@my_crawler_obj).to receive(:read_page_content).with(inner_page3_path).and_return(inner_page3_body)
      
      @my_crawler_obj.get_input_count(root_page_path)    
    end

    it 'expect to return correct total input count' do
     
      
      expect(@my_crawler_obj.instance_variable_get(:@total_input)).to eq 12
    end
  end

end