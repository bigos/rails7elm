require 'rails_helper'

RSpec.describe "uploads/index", type: :view do
  before(:each) do
    assign(:uploads, [
      Upload.create!(
        file: nil
      ),
      Upload.create!(
        file: nil
      )
    ])
  end

  it "renders a list of uploads" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
