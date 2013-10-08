require "spec_helper"

describe TopicsController, :type => :controller  do # don't need :type >... in 4.0
    before (:each)  do
      topic1 = Topic.create!
    end


  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the topics into @topics" do
      topic1, topic2 = Topic.create!, Topic.create!
      get :index
      # same as:
      # expect(assigns(:topics)).to match_array([topic1, topic2]) # what is assigns? ...equals?
      assigns(:topics).should eql([topic1, topic2])
    end

  end

  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      # topic1 = Topic.create!  # good pattern ?
      get :show, id: topic1.id
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the show template" do
      # topic1 = Topic.create!  # good pattern ?
      get :show, id: topic1.id
      expect(response).to render_template("show")
    end
  end

  describe "GET #create" do
   it "responds successfully with an HTTP 200 status code" do
      # topic1 = Topic.create!  # good pattern ?
      get :create, id: topic1.id
      expect(response).to be_success
      expect(response.status).to eq(200)
    end



  end

end