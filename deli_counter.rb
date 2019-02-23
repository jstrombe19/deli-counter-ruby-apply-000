# Write your code here.
katz_deli = []

def line(katz_deli)
  if katz_deli.length > 0 
    lineup = ["The line is currently:"] 
    katz_deli.each_with_index do |person, idx|
      lineup << (idx + 1) 
      lineup << "."
      lineup << person
    end
    puts lineup.join(" ")
  else
    puts "The line is currently empty."
  end
end
  
def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, " + name + ". You are number " + katz_deli.length + " in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0 
    puts "Currently serving " + katz_deli[0] + "."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end