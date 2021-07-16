# retrieve a Time instance and format the string
ftime = Time.local.to_s("%Y-%m-%d %H:%M:%S|UTC: %:z")

print "Type your name: "

# read user input, not nil
name = gets.not_nil!.to_s

# Interpolation instead of concatenation
puts "Hello, #{name}! Today is: #{ftime}"

class Greetings
  # initalize with instance variables
  def initialize(@name : String)
    @name = name
  end

  # verifies the hour before greet the user
  private def verify_hour
    utime = Time.local.hour

    # control flow with if, elsif and else
    if utime >= 0 && utime < 12
      "morning"
    elsif utime >= 12 && utime < 18
      "afternoon"
    elsif utime >= 18 && utime <= 24
      "evening"
    else
      puts "Wrong spacetime"
    end
  end

  # greet's the user
  def greet
    "Hi #{@name}, good #{verify_hour}"
  end
end

ob_greet = Greetings.new(name)

puts ob_greet.greet
