puts "What is your name? "
name = gets.chomp

puts "Hi #{name}!"

while true
	puts "How old are you #{name}?"
	age = gets.chomp.to_i

	if (age < 3) || (age > 90)
		puts "That seems unlikely..."
	else 
		break
	end
end

time = Time.new
puts "You were born in #{time.year - age}"

while true
	puts "Is this correct? (y/n)"
	correct = gets.chomp.upcase

	if correct == "Y"
		puts "Awesome!"
		break
	elsif correct == "N"
		puts "Sorry about that. You must have been born in #{time.year - age - 1}"
		break
	end
end
