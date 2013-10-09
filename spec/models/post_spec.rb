require 'spec_helper'
describe Post do
  let(:valid_params) { {:title => "some title", :body => "legit body"} }
  it "can be created and saved" do
    @post = Post.new(valid_params)
    @post.should_not be_persisted
    @post.save
    @post.should be_persisted
  end
  it { should validate_presence_of(:title) }
  it "can't have an empty body" do
    invalid_params = { :title => "I'm the title!" }
    @post = Post.create(invalid_params)
    @post.should_not be_persisted
  end

end