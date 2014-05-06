require 'spec_helper'

describe 'collections practice' do

  let(:story) {
    <<-astory
      The summer of tenth grade was the best summer of my life.  
      I went to the beach everyday and we had amazing weather.  
      The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  
      I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  
      Its amazing how much the weather affects your mood.  
      Who would have thought that I could write a whole essay just about the weather in tenth grade.  
      Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong.
    astory
  }
  let(:jams) {["dave matthews band - tripping billies", 
                "dave matthews band - #41", 
                "calvin harris - some techno song", 
                "avicii - some other dance song", 
                "oasis - wonderwall", 
                "oasis - champagne supernova"]}
  let(:story_count) {
    {"The"=>2, "summer"=>2, "of"=>3, "tenth"=>2, "grade"=>1, 
      "was"=>2, "the"=>5, "best"=>1, "my"=>1, "life."=>1, "I"=>4, 
      "went"=>1, "to"=>3, "beach"=>1, "everyday"=>1, "and"=>3, 
      "we"=>1, "had"=>1, "amazing"=>3, "weather."=>1, "weather"=>3, 
      "didnt"=>2, "really"=>1, "vary"=>1, "much"=>2, "always"=>1, 
      "pretty"=>1, "hot"=>1, "although"=>1, "sometimes"=>1, "at"=>1, 
      "night"=>1, "it"=>2, "would"=>4, "rain."=>1, "mind"=>1, "rain"=>1, 
      "because"=>1, "cool"=>1, "everything"=>1, "down"=>1, "allow"=>1, 
      "us"=>1, "sleep"=>1, "peacefully."=>1, "Its"=>2, "how"=>1, 
      "affects"=>1, "your"=>1, "mood."=>1, "Who"=>1, "have"=>2, 
      "thought"=>1, "that"=>1, "could"=>1, "write"=>1, "a"=>1, 
      "whole"=>1, "essay"=>1, "just"=>1, "about"=>1, "in"=>1, 
      "grade."=>1, "kind"=>1, "right?"=>1, "Youd"=>1, "think"=>1, 
      "for"=>1, "such"=>1, "an"=>1, "interesting"=>1, "person"=>1, 
      "might"=>1, "more"=>1, "say"=>1, "but"=>1, "you"=>1, "be"=>1, "wrong."=>1}
  }
  describe '#sort_array_asc' do

    # Question 1

    it 'should return an array sorted in ascending order' do
      expect(sort_array_asc([25, 7, 1])).to eq([1,7,25])
    end

  end

  describe '#sort_array_desc' do

    # Question 2

    it 'should return an array sorted in descending order' do
      expect(sort_array_desc([25, 7, 14])).to eq([25, 14, 7])
    end

  end

  describe '#swap_elements' do

    # Question 3

    it 'swap the second and third elements of an array' do
      expect(swap_elements(["blake", "ashley", "scott"])).to eq(["blake", "scott", "ashley"])
    end

  end

  describe '#reverse_array' do

    # Question 4

    it 'reverse the order of an array' do
      expect(reverse_array(["blake", "ashley", "scott"])).to eq(["scott", "ashley", "blake"])
    end

  end

  describe '#kesha_maker' do

    # Question 5

    it 'taking an array as an input, change the 3rd character of each element to a dollar sign.' do
      expect(kesha_maker(["blake", "ashley", "scott"])).to eq(["bl$ke", "as$ley", "sc$tt"])
    end

  end

  describe '#greater_and_less_than_10' do

    # Question 6

    it 'using an array as input create a hash with two keys, "greater_than_10", "less_than_10" with values that are arrays of any numbers greater than 10 or less than 10' do
      expect(greater_and_less_than_10([100, 1000, 5, 2, 3, 15, 1, 1, 100 ])).to eq({"greater_than_10" => [100, 1000, 15, 100], "less_than_10" => [5, 2, 3, 1, 1]})
    end

  end

  describe '#find_winners' do

    # Question 7

    it 'find all the winners and return them in an array' do
      expect(find_winners({:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"})).to eq([:blake, :carlos])
    end

  end

  describe '#find_a' do

    # Question 8

    it 'find all words that begin with "a" in the following array' do
      expect(find_a(["apple", "orange", "pear", "avis", "arlo", "ascot" ])).to eq(["apple", "avis", "arlo", "ascot"])
    end

  end

  describe '#sum_array' do

    # Question 9

    it 'sum all the numbers in the following array' do
      expect(sum_array([11,4,7,8,9,100,134])).to eq(273)
    end

  end

  describe '#add_s' do

    # Question 10

    it 'Add an "s" to each word in the array except for the 2nd element in the array' do
      expect(add_s(["hand","feet", "knee", "table"])).to eq(["hands","feet", "knees", "tables"])
    end

  end
  

  describe '#count_words' do

    # Question 11
    # Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.
    it 'return a hash whose keys are each word in the story and the value is the number of occurences of that word' do
      expect(count_words(story)).to eq(story_count)
    end

  end

  describe '#organize_songs_by_artist' do

    # Question 12
    # Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.
    it 'Organize the songs by artist' do
      expect(organize_songs_by_artist(jams)).to eq({"dave matthews band" => ["tripping billies", "#41"], "calvin harris" => ["some techno song"], "avicii" => ["some other dance song"], "oasis" => ["wonderwall", "champagne supernova"]})
    end

  end
  


end