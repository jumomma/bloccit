# #5 define RandomData as a module; modules help keep common
#   functions organized and reusable.
module RandomData
# #6 define random_paragraph; set 'sentences' to an array; create
#   four to six random sentences and append them to 'sentences';
#   call 'join' on 'sentences' to combine each sentence in the array,
#   passing a space to separate each sentence.  'join' combines each sentence into
#   a fulle paragraph (as a string)
  def self.random_paragraph
    sentences = []
    rand(4..6).times do
      sentences << random_sentence
    end

    sentences.join(" ")
  end

# #7 follow same pattern as #6 to create sentence with a random num of words
#  after we generate a sentence, call 'capitalize' on it and append a period.
  def self.random_sentence
    strings = []
    rand(3..8).times do
      strings << random_word
    end

    sentence = strings.join(" ")
    sentence.capitalize << "."
  end

# #8 define random_word; set 'letters' to an array of letters a - z using to_a.
#  call 'shuffle!' on 'letters' in place. Join the zeroth thorugh nth item in letters.
#  the nth item is the results of rand(3..8) whih returns a random num greater than or
#  equal to three and less than or equal to 8
  def self.random_word
    letters = ('a'..'z').to_a
    letters.shuffle!
    letters[0,rand(3..8)].join
  end
end
