class Favorite < ActiveRecord::Base
    belongs_to :user
    belongs_to :tree

    def self.tty_runner
        @@prompt = TTY::Prompt.new
        @@prompt
    end

    def self.select_tree
        
        tty_runner
        # binding.pry
        trees = Tree.all.map{ |tree|[tree.common_name, tree.common_name]}.to_h 
        # binding.pry
        question = "What tree do you want to add to your favorites?"
        response = @@prompt.select(question, trees)
        response 
        # binding.pry
    end


    def self.add_to_favorites
        # binding.pry
        response = select_tree
# binding.pry
        user = Application.return_username
        tree = Tree.find_by(common_name: response)
        create(user:user, tree:tree)
        
        binding.pry
    end

    # user = User.find_by(user_name: user)
end