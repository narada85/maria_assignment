require 'rails_helper'

RSpec.describe "temperatures/index", type: :view do
  before(:each) do
    assign(:temperatures, [
      Temperature.create!(
        :title => "Title",
        :celcius => 1.5,
        :fahrenheit => 1.5,
        :description => "MyText"
      ),
      Temperature.create!(
        :title => "Title",
        :celcius => 1.5,
        :fahrenheit => 1.5,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of temperatures" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
