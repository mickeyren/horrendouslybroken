require "spec_helper"

describe PostsController, type: :routing do
  describe "routing" do
    it "routes to posts#index" do
      get("/").should route_to("posts#index")
    end
  end
end
