require 'random_data'

 # Create Posts
 50.times do
 # #1 using "!" instructs the method to raise an error if there's a problem with the data we're seeding
   Post.create!(
 # #2 RandomData will create random strings for title and body.
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments
 # #3 call 'times' on an integer; runs a given block specified number of times.
 100.times do
   Comment.create!(
 # #4 call 'sample' on the array returned by Post.all in order to pick a random post.
 #   'sample' returns a random element from the array every time its called
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

puts "#{Post.count}"
 Post.find_or_create_by(title: "My unique title", body: "My unique body")
puts "#{Post.count}"

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
