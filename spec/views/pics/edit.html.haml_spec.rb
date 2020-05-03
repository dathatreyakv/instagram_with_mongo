require 'rails_helper'

RSpec.describe "pics/edit", type: :view do
  before(:each) do
    @pic = assign(:pic, Pic.create!())
  end

  it "renders the edit pic form" do
    render

    assert_select "form[action=?][method=?]", pic_path(@pic), "post" do
    end
  end
end
