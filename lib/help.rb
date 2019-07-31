# require_relative "./models/favorite.rb"
class Help
  # system "clear"

  def self.tty_runner
    @@prompt = TTY::Prompt.new
    @@prompt
  end

  def self.main_menu_help
    puts "poop"
  end
end
