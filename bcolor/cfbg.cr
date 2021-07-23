# change {foreground, background} colors and text decorations when rendering text on terminals
require "colorize"

# currently available colors:
cr_colors = [
  :default,
  :black,
  :red,
  :green,
  :yellow,
  :blue,
  :magenta,
  :cyan,
  :light_gray,
  :dark_gray,
  :light_red,
  :light_green,
  :light_yellow,
  :light_blue,
  :light_magenta,
  :light_cyan,
  :white,
]

# currently available text-decorations:
cr_txt_dec = [
  :bold,
  :bright,
  :dim,
  :underline,
  :blink,
  :reverse,
  :hidden,
]

# change foreground color
p! "1st fg io".colorize(cr_colors[3])
puts "2nd fg io".colorize.green
puts "3rd fg io".colorize.fore(:green)

# change background color
puts ""
p! "1st bg io".colorize.back(:blue)
puts "2nd bg io".colorize.on(:blue)
puts "3rd bg io".colorize.on_blue

# combining foreground and background
puts ""
p! "1st cb io".colorize(:black).back(:white)
puts "1st cb io".colorize(:green).back(:black)

# orange: 208 DarkOrange #ff8700 rgb(255,135,0) hsl(1,100%,50%), from: https://jonasjacek.github.io/colors/
# change foreground color (RGB)
puts ""
p! "1st rgb io".colorize(Colorize::ColorRGB.new(255, 135, 0))

# change foreground color (8-bit)
puts ""
p! "1st 8-bit io".colorize(Colorize::Color256.new(208))

# run: crystal run ./cba.cr
