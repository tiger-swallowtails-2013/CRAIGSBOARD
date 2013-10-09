require "spec_helper"

# psedo-code
# describe Topics (model)
# it "has a valid factory"
# it "in invalide without title"

describe Topic do
  it "has a valid factory" do
    FactoryGirl.create(:topic).should be_valid
  end

  it "is invalid without title" do
    FactoryGirl.build(:topic, title: nil).should_not be_valid
  end

end



