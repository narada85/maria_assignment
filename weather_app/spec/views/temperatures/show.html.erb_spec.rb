require 'rails_helper'

RSpec.describe "temperatures/show", type: :view do
  before(:each) do
    @temperature = assign(:temperature, Temperature.create!(
      :title => "Title",
      :celcius => 1.5,
      :fahrenheit => 1.5,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
  end
end
