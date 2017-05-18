def student
  puts "Please enter Students name: "
  name = gets.chomp
  puts "Please enter Grade: "
  name
end

def grades
  grade1 = gets.chomp.to_f
  grade2 = gets.chomp.to_f
  grade3 = gets.chomp.to_f
  grade4 = gets.chomp.to_f
  grade5 = gets.chomp.to_f
  sum = grade1 + grade2 + grade3 + grade4 + grade5
  average = sum / 5
  average
end

students = []
again = 'y'

while again != 'n'
  name = student
  average = grades
  student_hash = {
    name: name,
    average: average
  }
  students << student_hash
  puts "#{name} Grades: #{average}"
  puts "Would you like to continue?"
  again = gets.chomp
end

def letter_grade(average)
  if average >= 90
    "A"
  elsif average >= 80
    "B"
  elsif average >= 70
    "C"
  elsif average>= 60
    "D"
  else
    "F"
  end
end

students.each do |person|
  average = person[:average]
  letter = letter_grade(average)
  puts "Name: #{person[:name]} average: #{average}"
  puts "letter grade: #{letter}"
end
