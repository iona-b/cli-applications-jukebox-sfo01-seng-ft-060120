require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.map_with_index { |val,index| puts "#{index + 1}. #{val}" }
  # binding.pry
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  songs.each do |index, song_title|
    if song = user_response
      player_response =  "Playing #{user_response}"
    end
  end
  if player_response = ""
    player_response = "Invalid input, please try again"
  end
  puts player_response
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command: "
  command = gets.strip
  
  if command = "help"
    help
  elsif command = "list"
    list
  elsif command = "play"
    play
  elsif command = "exit"
    exit_jukebox
  else
    "Please enter a valid command: "
  end
  
end