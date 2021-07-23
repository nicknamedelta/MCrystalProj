# change {foreground, background} colors and text decorations when rendering text on terminals
require "colorize"

# change text-decoration
p! "1st td io".colorize.mode(:hidden)
puts "2nd td io".colorize.bold

# change text-decoration with colors
p! "1st tdco io".colorize.fore(:white).back(:red).mode(:bright)
puts "2nd tdco io".colorize.fore(:black).back(:white).mode(:dim)

# temporarily disable adding the escape codes
puts "foo".colorize(:red).toggle(false)

# color :default will just leave the object as it is
print "Type your username: "
user_name = gets.not_nil!.to_s

is_bilbo_res = is_bilbo(user_name)

puts "Welcome, #{user_name.titleize.colorize(is_bilbo_res == 0 ? :yellow : :default)
                   .back(is_bilbo_res == 0 ? :green : :default).mode(:bright)}."

def is_bilbo(name : String)
  p! name.compare("bilbo baggins", case_insensitive: false)
  p! name.compare("bilbo baggins", case_insensitive: true)
  name.compare("bilbo baggins", case_insensitive: true)
end

# run: crystal run ./lotc.cr
