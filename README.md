---
  tags: arrays, iteration, hashes, conditionals, bonus
  languages: ruby
---

# Collections Practice

### Skills: iteration, arrays, hashes

## Instructions

The goal of this lab is to become proficient manipulating the basic data structures we use in Ruby, arrays and hashes.  Try experimenting with the built in Ruby and Hash methods as well as implementing your own logic to solve these.  Write methods that solve each of the rspec tests.

## Question 1: `#sort_array_asc`

Build a method `sort_array_asc` that takes in an array of integers and returns a copy of the array with the integers in ascending order. Try to do it first using built-in ruby sorting methods (such as `sort` and `sort_by`) and then again by dropping to a lower level and implementing your own logic.

## Question 2: `#sort_array_desc`

Build a method `sort_array_desc` that takes in an array of integers and returns a copy of the array with the integers in descending order. Try to do it first using built-in ruby sorting methods (such as `sort` and `sort_by`) and then again by dropping to a lower level and implementing your own logic.

## Question 3: `#swap_elements`

Build a method `swap_elements` that takes in an array and swaps the second and third elements.

_Bonus_ Try building a method `swap_elements_from_to` that takes in 3 arguments, `array, index, destination_index`, that will allow you to specify the index of the element you would like to move to a new index. So:

```ruby
swap_elements_from_to(["a", "b", "c"],0,3) #=> ["c", "b", "a"]
swap_elements_from_to(["a", "b", "c"],2,1) #=> ["a", "c", "b"]
```

_Double Bonus_ Try writing test coverage for it!

## Question 4: `#reverse_array`

Build a method `reverse_array` that takes in an array of integers and returns a copy of the array with the elements in reverse order. Try to do it first using built-in ruby array methods (such as `sort` or even `reverse`) and then again by dropping to a lower level and implementing your own logic.

## Question 5: `#kesha_maker`

Build a method called `kesha_maker` that takes in an array of string elements and replaces the 3rd character in the string with a `$`, Ke$ha style. Think about the different ways to do this, maybe first using `each` and then with a higher level iterator that can shorten the methods implementation and use abstraction to be absolutely precise, Dijkstra style.

## Questions 6: `#greater_and_less_than_10`

Build a method that takes in an array of integers and returns a hash that has grouped the integers in the original array into appropriate keys based on whether the integer is < 10. You could do this with some low level iterators, `each` and `collect`. Try those first, see what logic gets removed, or encapsulated into the higher level iterator, and then finally see if you can use an even higher level iterator that allows you to `find, select, or detect` elements in a collection that meet a certain requirement. Hint hint...

_Bonus_ There's something called `inject` or `each_with_object` that might allow you to even abstract away out explicitly defining the return value's hash.
## Question 7: `#find_winners`

Build a method `find_winners` that takes in a hash whose keys are the names of people (that we love, these are just examples, everyone at Flatiron is a winner duh) and whose value is whether they are a winner or a loser, and returns an array of all the keys in the hash (names) whose value is winner. Again, explore the differences between `each`, `collect` and maybe even explore a higher level hash method that might be able to scan or select based on values...

## Question 8: `#find_a`

Build a method `find_a` that returns all the strings in the array passed to it that `start_with?` the letter a. You'll want to use a high level iterator for this that finds, selects, or detects elements based on a condition.

## Question 9: `#sum_array`

Build a method `sum_array` that sums all the integers in the array.

_Bonus_ Try using `inject` or `each_with_object` here.

## Question 10: `#add_s`

Build a method that adds an "s" to each word in the array except for the 2nd element in the array. 

_Bonus_ Iterators in Ruby are chainable, see if you can use `each_with_index` in addition to `collect` to solve this one very elegantly. What happens if you did `[1,2].each_with_index.collect{|element, index| }`?

## Question 11: `#count_words`

Build a method that creates a [histogram](http://en.wikipedia.org/wiki/Histogram) of the words in a story, which is to say, that it returns a hash where every key is a word in the story and the value of that key is the count of how many times that word occurs in the story. There's a tip in the test suite that might make this easier. Get it working and then experiment with a few ways to make it more elegant.

## Question 12: `#organize_songs_by_artist`

Build a method that organizes the songs in this array into a hash by artist. Make sure to code it in an abstract manner so that if we sent it an array with other songs, it would still work. Be abstract, not specific, that means you can't rely on these and only these artists being present. You might need to practice your `split`s for this one.



