require 'rails_helper'

RSpec.describe "home/index.html.haml", type: :view do
  it "rspec matching should not show" do
    render
    expect(rendered).not_to match '/<h1>Rohit Chourasia</h1>/'
  end
  it "rspec matching show" do
    render
    expect(rendered).to match '<h1>Rohit Chourasia</h1>'
  end
  it "capybara should display my name" do
   render
   expect(rendered).to have_css('h1', text: 'Rohit Chourasia')
  end
  it "capybara should not display name" do
   render
   expect(rendered).not_to have_css('h1', text: 'Chemi Tenzin')
  end
  it "capybara should not display name" do
   render
   expect(rendered).to have_link('Rohit Chourasia', href: 'google.com/hello')
  end
end
