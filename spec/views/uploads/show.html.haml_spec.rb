require 'rails_helper'

RSpec.describe "uploads/show", type: :view do
  before(:each) do
    assign(:upload, Upload.create!(
      file: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
