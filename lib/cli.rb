

def main_menu
    system("clear")
    prompt = TTY::Prompt.new
    name = prompt.ask('What is your name?', default: ENV['USER'])
    puts "welcome #{name}, here is a list of tall trees:"
    puts Tree.tall_trees  
end

