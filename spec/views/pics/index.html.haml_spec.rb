require 'rails_helper'

RSpec.describe "pics/index", type: :view do
  before(:each) do
    assign(:pics, [
      Pic.create!(),
      Pic.create!()
    ])
  end

  it "renders a list of pics" do
    render
  end
end
