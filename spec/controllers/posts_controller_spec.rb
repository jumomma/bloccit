require 'rails_helper'
# #6
RSpec.describe PostsController, type: :controller do

# #8 create post and assign it to my_post using let. Use RandomData to give my_post a random title/body
  let(:my_post) { Post.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET #index" do
    it "returns http success" do
# #7
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_post] to @posts" do
      get :index
# #9 At #9, because our test created one post (my_post), we expect index to return an array of one item. We use assigns, a method in ActionController::TestCase.  assigns gives the test access to "instance variables assigned in the action that are available for the view".
      expect(assigns(:posts)).to eq([my_post])
    end
  end

  describe "GET show" do
      it "returns http success" do
  # #16
        get :show, {id: my_post.id}
        expect(response).to have_http_status(:success)
      end
      it "renders the #show view" do
  # #17
        get :show, {id: my_post.id}
        expect(response).to render_template :show
      end

      it "assigns my_post to @post" do
        get :show, {id: my_post.id}
  # #18
        expect(assigns(:post)).to eq(my_post)
      end
    end

  # #1
   describe "GET new" do
     it "returns http success" do
       get :new
       expect(response).to have_http_status(:success)
     end

# #2
     it "renders the #new view" do
       get :new
       expect(response).to render_template :new
     end

# #3
     it "instantiates @post" do
       get :new
       expect(assigns(:post)).not_to be_nil
     end
   end

   describe "POST create" do
     it "increases the number of Post by 1" do
       expect{ post :create, params: { post: { title: RandomData.random_sentence, body: RandomData.random_paragraph } } }.to change(Post,:count).by(1)
     end

     it "assigns the new post to @post" do
       post :create, params: { post: { title: RandomData.random_sentence, body: RandomData.random_paragraph } }
     end

     it "redirects to the new post" do
       post :create, params: { post: { title: RandomData.random_sentence, body: RandomData.random_paragraph } }
       expect(response).to redirect_to Post.last
     end
   end

  #  describe "GET edit" do
  #    it "returns http success" do
  #      get :edit
  #      expect(response).to have_http_status(:success)
  #    end
  #  end

end
