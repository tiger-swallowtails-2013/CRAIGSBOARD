require 'spec_helper'

describe PostsController do
  it "is a controller that has routes that i can hit... also this is a shitty test" do

    get :index
    expect(assigns(:posts)).to eq([])
  end
end

