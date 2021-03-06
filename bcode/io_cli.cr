# change {fore, background} colors and text decorations when rendering text on terminals
require "colorize"

puts "Welcome to Massacration Sing-Along version 2.0!"
puts "Enter a phrase you want Massacration to sing"
print "> "
user_input = gets

exit if user_input.nil? # Ctrl+D

default_lyrics = "Metal! Metal! Trash! Trash!" \
                 " / " \
                 "Metal! Metal! Trash! Trash!"

lyrics = user_input.presence || default_lyrics

puts "Massacration are singing: #{"π΅#{lyrics.upcase}πΆπΈπ₯".colorize.mode(:blink)}"

# run: crystal run ./io_cli.cr
