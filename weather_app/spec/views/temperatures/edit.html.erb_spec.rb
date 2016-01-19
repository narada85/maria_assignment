require 'rails_helper'

RSpec.describe "temperatures/edit", type: :view do
  before(:each) do
    @temperature = assign(:temperature, Temperature.create!(
      :title => "MyString",
      :celcius => 1.5,
      :fahrenheit => 1.5,
      :description => "MyText"
    ))
  end

  it "renders the edit temperature form" do
    render

    assert_select "form[action=?][method=?]", temperature_path(@temperature), "post" do

      assert_select "input#temperature_title[name=?]", "temperature[title]"

      assert_select "input#temperature_celcius[name=?]", "temperature[celcius]"

      assert_select "input#temperature_fahrenheit[name=?]", "temperature[fahrenheit]"

      assert_select "textarea#temperature_description[name=?]", "temperature[description]"
    end
  end
end
