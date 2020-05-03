require 'rails_helper'

RSpec.describe "pics/new", type: :view do
  before(:each) do
    assign(:pic, Pic.new())
  end

  it "renders new pic form" do
    render

    assert_select "form[action=?][method=?]", pics_path, "post" do
    end
  end
end
