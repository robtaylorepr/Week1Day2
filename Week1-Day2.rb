#!/usr/bin/ruby
# 2nd days addignment

# create an array of students in our_class
puts 'create an arrary of students in our-class'
our_class = ['Rob', 'David', 'Nancy', 'Kalea', 'Laura', 'Dave',
'Demetra', 'Kendrick', 'Phil', 'Ben', 'Michael', 'Miguel', 'Chris']
puts our_class

# list the names less than 5 characters
puts ' '
puts 'list the names less than 5 characters'
short_names = our_class.select {|name| name.length < 5}
puts short_names

# Words in sentence < 5 characters ...
puts ' '
puts 'Words in sentence < 5 characters ...'
sentence = "Ruby is actually kind of fun once you get used to it."
array = sentence.split
four_character_words = array.select {|word| word.length==4}
puts four_character_words

# Movies/budgets & Movies/DiCaprio
movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}
budget_movies = movies.select {|movie| movie[:budget].to_i < 100}
budget_titles = budget_movies.collect {|movie| movie[:title] }
puts ' '
puts 'Movies w/ budgets < 100'
puts budget_titles

DiCaprio_titles = movies.select {|movie| movie[:stars].include? "Leonardo DiCaprio" }.collect {|movie| movie[:title]}
puts ' '
puts 'Movies w/ DiCaprio'
puts DiCaprio_titles

# four_words(text)
puts ' '
puts "  four_words(text)   "
def four_words(text)
  text.split.select {|word| word.length == 4 }.collect {|word| word}
end
puts four_words("Mary had a little lamb")

# how_many_words(text, num)
puts ' '
puts "how_many_words(text, num)"
def how_many_words(text, num)
  text.split.select {|word| word.length == num }.collect {|word| word}
end
puts how_many_words('Mary had', 3)
puts how_many_words("someone said boo",7 )

# What's the total budget of our movies?
puts ' '
puts "What's the total budget of our movies?"
total_budgets = 0
movies.each {|movie| total_budgets += movie[:budget] }
puts "Total Budgets = $#{total_budgets}"

# produce an array of each star
puts ' '
puts "produce an array grouped by each star"
star_list = movies.collect {|movie| movie[:stars]}
x = star_list.uniq {|star| star}
puts star_list
puts "value of x is #{x}"
