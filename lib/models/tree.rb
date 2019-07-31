
class Tree < ActiveRecord::Base
    
    has_many :favorites
    has_many :users, through: :favorites

    def self.tty_runner
        @@prompt = TTY::Prompt.new
        @@prompt
    end

    def self.tall_trees
        where("min_height > ?", 50).pluck(:common_name)
    end

    def self.all_trees
        tty_runner
        
        puts all.pluck(:common_name)

        puts "Aren't these trees neat!"
        question = "Return to Main Menu?"
        output = %w(yes exit)

        response = @@prompt.select(question, output)
        
        if response == "yes"
            system "clear"
            Application.main_menu
        else
            abort("Thanks for using TreeFind!!!!!!!!!")
        end
    end
end