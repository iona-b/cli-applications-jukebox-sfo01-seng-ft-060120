require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs = songs.each_with_index { |val,index| puts "#{index + 1}. #{val}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  songs.each do |song_title|
    if song_title == user_response
      puts "Playing #{user_response}"
    elsif user_response.to_i > 0 && user_response.to_i < songs.length
      puts "Playing #{songs[user_response.to_i]}"
    end
    #binding.pry
  end
    return "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  
  puts "Please enter a command: "
  command = gets.strip
  
  if command == "help"
    help
  elsif command == "list"
    list
  elsif command == "play"
    play
  elsif command == "exit"
    exit_jukebox
  else
    "Please enter a valid command: "
  end
  
end