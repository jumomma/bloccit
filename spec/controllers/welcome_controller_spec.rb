require 'rails_helper'

# #1 describe the subject of the spec
RSpec.describe WelcomeController, type: :controller do
 describe "GET index" do
   it "renders the index template" do
# #2 call the index method of WelcomeController
     get :index
# #3 expect the controller's response to render the index template
    expect(response).to render_template("index")
   end
 end

 describe "GET about" do
   it "renders the about template" do
     get :about
     expect(response).to render_template("about")
   end
 end

 describe "GET faq" do
   it "renders the faq template" do
     get :faq
     expect(response).to render_template("faq")
   end
 end
end
