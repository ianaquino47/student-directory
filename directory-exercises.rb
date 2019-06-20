def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first names
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  # return the array of input_students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)


# ##### Exercises######
# 1. How can you modify the program to print a number before the name of each student,
# e.g. "1. Dr. Hannibal Lecter"? Hint: look into each_with_index()
#
#   students.each_with_index() do |student,index|
#     puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
#   end
#
#
# 2. Modify your program to only print the students whose name begins with a specific letter.
#
#   students.each do |student|
#     if student[:name].start_with? "S"  <-- "S" can be replaced with any letter
#       puts "#{student[:name]} (#{student[:cohort]} cohort)"
#     end
#   end

# 3. Modify your program to only print the students whose name is shorter than 12 characters.
#
#   students.each do |student|
#     if student[:name].length < 12
#       puts "#{student[:name]} (#{student[:cohort]} cohort)"
#     end
#   end

# 4. Rewrite the each() method that prints all students using while or until
#   control flow methods (Loops)
#
#   for i in 0..(students.length - 1)
#    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)"
#   end
