require 'rails_helper'

RSpec.describe "uploads/edit", type: :view do
  let(:upload) {
    Upload.create!(
      file: nil
    )
  }

  before(:each) do
    assign(:upload, upload)
  end

  it "renders the edit upload form" do
    render

    assert_select "form[action=?][method=?]", upload_path(upload), "post" do

      assert_select "input[name=?]", "upload[file]"
    end
  end
end
