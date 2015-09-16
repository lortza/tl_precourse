# http://www.gotealeaf.com/books/ruby_workbook/read/intermediate_quiz_3

#1 even after revisiting this
#http://www.gotealeaf.com/books/ruby/read/more_stuff#variables_as_pointers
# i still don't know where these object ids are coming from

#2 works the same way

#3 Rutabaga gets pushed into the array and updates the variable because pushing does that. But adding to a string creates a new instance.

#4 gsub seems to be modifying the string without creating a new instance. very interesting.

#5 How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid(color)
    color == "blue" || color == "green"
  end