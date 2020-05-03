require 'rails_helper'

RSpec.describe "pics/show", type: :view do
  before(:each) do
    @pic = assign(:pic, Pic.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
