require 'rails_helper'

RSpec.describe "temperatures/new", type: :view do
  before(:each) do
    assign(:temperature, Temperature.new(
      :title => "MyString",
      :celcius => 1.5,
      :fahrenheit => 1.5,
      :description => "MyText"
    ))
  end

  it "renders new temperature form" do
    render

    assert_select "form[action=?][method=?]", temperatures_path, "post" do

      assert_select "input#temperature_title[name=?]", "temperature[title]"

      assert_select "input#temperature_celcius[name=?]", "temperature[celcius]"

      assert_select "input#temperature_fahrenheit[name=?]", "temperature[fahrenheit]"

      assert_select "textarea#temperature_description[name=?]", "temperature[description]"
    end
  end
end
