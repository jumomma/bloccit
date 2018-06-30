require 'rails_helper'

RSpec.describe Post, type: :model do
  # #1 let method to create new instance of Post class & name it "post".
  # let dynamically defines a method (post) the it block runs to compute
  # and store the returned value
  let(:post) { Post.create!(title: "New Post Title", body: "New Post Body")}

  # #2 test whether 'post' has attributes name 'title' and 'body'.
  # tests whether 'post' will return a non-nil value when post.title & post.body are called
  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attributes(title: "New Post Title", body: "New Post Body")
    end
  end
end
