def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    students = []
    name = gets.chomp
    puts "please enter the cohort"
    cohort = gets.chomp
    while !name.empty? do
      students << {name: name, cohort: cohort}
      puts "Now we have #{students.count} students"
      name = gets.chomp
      puts "please enter the cohort"
      cohort = gets.chomp
        # puts"Please type a specific character"
        # character = gets.chomp
        # if name.include?(character) && name.length < 12
        #     puts""
        # else
        #     puts "Please give me another name."
        # end
    end
    students
  end
  
  def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end
  
  def print(students)
      i = 0
      until i >= students.length
        puts "-NAME: #{students[i][:name]}"
        puts "-COHORT MONTH: #{students[i][:cohort]}"
        i += 1
      end 
  end
  
  def print_footer(students)
    puts "Overall, we have #{students.count} great students"
  end
  
  students = input_students

  print_header
  print(students)
  print_footer(students)