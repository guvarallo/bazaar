require 'spec_helper'

describe Brand do

  it { should have_many(:ads) }

  it "displays the brand name" do
    brand = Brand.create(brand_name: "Test")
    brand.reload.display_name.should eq("Test")
  end

end
