require "spec_helper"

describe TopicsController  do

  # alternative to before(:each) do -- lazy loads so ! needed
  let!(:topic1) { Topic.create!(title: "whee1") }
  let!(:topic2) { Topic.create!(title: "whee2") }

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
      get :index
      # same as:
      # expect(assigns(:topics)).to match_array([topic1, topic2]) # what is assigns? ...equals?
      assigns(:topics).should eql([topic1, topic2])
    end

  end

  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      get :show, id: topic1.id
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the show template" do
      get :show, id: topic1.id
      expect(response).to render_template("show")
    end
  end


end