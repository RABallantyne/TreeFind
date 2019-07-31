# require_relative "./models/favorite.rb"
class Help
  # system "clear"

  def self.tty_runner
    @@prompt = TTY::Prompt.new
    @@prompt
  end

  def self.list_all_trees
   puts Tree.all_trees
  end

  def self.select_tree
    tty_runner
    trees = Tree.all.map{ |tree|[tree.common_name, tree.common_name]}.to_h 
  
    question = "What tree do you want to add to your favorites?"
    response = @@prompt.select(question, trees)
    response 
    # Favorite.add_to_favorites
    # binding.pry
  end


  def self.list_trees_by_characteristics
    puts "sjkfb"
  end

  def self.main_menu_help
    puts "poop"
  end
end
