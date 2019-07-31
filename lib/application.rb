# require "pry"
# require "tty-prompt"
# require "colorize"
# require_relative "./help"
# require_relative "./questions.rb"
# require_relative "../config/environment.rb"

class Application
# @@user = nil
    
# ____________TITLE_PAGE___________________________

#   @@user = nil
#   @@type = nil
#   @@needles = nil

def self.tty_runner
    @@prompt = TTY::Prompt.new
    @@prompt
end


def self.get_username
    system "clear"
    tty_runner
    puts "Hello! Welcome to TreeFind!".white.on_green
    
    question = "Have you logged in before?"
    output = {
        "I have not!" => 1,
        "Sure have!" => 2,  
    }
    response = @@prompt.select(question, output).to_i

    if response == 1
        user = @@prompt.ask("What is your name?", default: ENV["USER"])
        User.create(user_name: user)
        # binding.pry
    else 
        question = "Select your User Name:"
        output = User.all.map(&:user_name)
        user = @@prompt.select(question, output)
    end 

    user = User.find_by(user_name: user)
    # binding.pry
end

# ____________MAIN_MENU___________________________

  def self.main_menu
    system "clear"
    tty_runner
    user = get_username

    question = "Hello, #{user.user_name}! What would you like to do?"
    # binding.pry
    output = {"Identify a tree." => 1,
      "See a list of all available trees." => 2,
      "See a list of all available trees by characteristic." => 3,
      "Add a tree to your list of favorites" => 4,
      "See your favorite trees" => 5,
      "Learn how to use this app." => 6
    }
    @@response = @@prompt.select(question, output).to_i

    # @@response = gets.chomp.to_i

    case @@response
    when 1
      Question.question_one
    when 2
      Help.list_all_trees
    when 3
      Help.list_trees_by_characteristics
    when 4
        Help.select_tree
    when 5
      User.saved_trees
    when 6
      Help.main_menu_help
    else
      puts "Please enter a number between 1 and 4"
    end
  end
  


# # ____________Question_1_Deciduous/Coniferous___________________________

#   def self.question_one
#     case @@response
#     when 1
#       @@type = "coniferous"
#       Question.question_two_conifer
#     when 2
#       @@type = "deciduous"
#       Question.question_two_deciduous
#     when 3
#       Help.list_trees_by_characteristics
#     when 4
#       self.main_menu
#     else
#       puts "Please enter a number between 1 and 4"
#       self.question_one
#     end
#   end
#   question_one


# #####_________________CONIFERS_______________________####

#   # ____________Question_2_Conifer_Needle-Arrangement___________________________

#   def self.question_two_conifer
#     case @@response
#     when 1
#       @@needles = "Clusters of 2-3"
#       Question.question_three_conifer
#     when 2
#       @@needles = "Clusters of 5"
#       Question.question_three_conifer
#     when 3
#       @@needles = "Flat"
#       Question.question_three_conifer
#     when 4
#       @@needles = "Sharp"
#       Question.question_three_conifer
#     when 5
#       @@needles = "Scaled"
#       Question.question_three_conifer
#     when 6
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 6"
#       self.question_two_conifer
#     end
#   end
#   question_two_conifer



# # ____________Question_3_Conifer_Cones___________________________

#   def self.question_three_conifer
#     case @@response
#     when 1
#       @@cones = "Woody"
#       Question.question_four_conifer
#     when 2
#       @@cones = "Papery"
#       Question.question_four_conifer
#     when 3
#       @@cones = "Berry"
#       Question.question_four_conifer
#     when 4
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 4"
#       self.question_three_conifer
#     end
#   end
#   question_three_conifer

#   # ____________Question_4_Conifer_Bark-Texture___________________________

#   def self.question_four_conifer
#     case @@response
#     when 1
#       @@bark_texture = "Smooth"
#       Question.question_five_conifer
#     when 2
#       @@bark_texture = "Bumpy"
#       Question.question_five_conifer
#     when 3
#       @@bark_texture = "Furrowed"
#       Question.question_five_conifer
#     when 4
#       @@bark_texture = "Scaled"
#       Question.question_five_conifer
#     when 5
#       @@bark_texture = "Peeling"
#       Question.question_five_conifer
#     when 6
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 6"
#       self.question_four_conifer
#     end
#   end
#   Application.question_four_conifer


#     # ____________Question_5_Conifer_Bark-Color___________________________

#   def self.question_five_conifer
#     case @@response
#     when 1
#       @@bark_color = "brown"
#       Question.question_six_conifer
#     when 2
#       @@bark_color = "gray-brown"
#       Question.question_six_conifer
#     when 3
#       @@bark_color = "gray"
#       Question.question_six_conifer
#     when 4
#       @@bark_color = "red-brown"
#       Question.question_six_conifer
#     when 5
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 5"
#       self.question_five_conifer
#     end
#   end
#   Application.question_five_conifer

#       # ____________Question_6_Conifer_Twigs___________________________

#   def self.question_six_conifer
#     case @@response
#     when 1
#       @@twigs = "Smooth"
#       # Question.question_six_conifer
#     when 2
#       @@twigs = "Hairy"
#       # Question.question_six_conifer
#     when 3
#       @@twigs = "Rough"
#       # Question.question_six_conifer
#     when 4
#       @@twigs = "Peeling"
#       # Question.question_six_conifer
#     when 5
#       @@twigs = "Thorny"
#       # Question.question_six_conifer
#     when 6
#       @@twigs = "Sticky"
#       # Question.question_six_conifer
#     when 7
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 7"
#       self.question_six_conifer
#     end
#   end
#   Application.question_six_conifer

# ####__________________DECIDUOUS_______________________________####

# # ____________Question_2_Deciduous_Leaf-Arrangement___________________________

#   def self.question_two_deciduous
#     case @@response
#     when 1
#       @@leaves = "Opposite"
#       Question.question_three_deciduous
#     when 2
#       @@leaves = "Alternate"
#       Question.question_three_deciduous
#     when 3
#       @@leaves = "Whorled"
#       Question.question_three_deciduous
#     when 4
#       @@leaves = "Basal"
#       Question.question_three_deciduous
#     when 5
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 5"
#       self.question_two_deciduous
#     end
#   end
#   Application.question_two_deciduous


# # ____________Question_3_Deciduous_Leaf-Shape___________________________

#   def self.question_three_deciduous
#     case @@response
#     when 1
#       @@leaf_shape = "Pinnate"
#       Question.question_four_deciduous
#     when 2
#       @@leaf_shape = "Narrow"
#       Question.question_four_deciduous
#     when 3
#       @@leaf_shape = "Deltoid"
#       Question.question_four_deciduous
#     when 4
#       @@leaf_shape = "Orbicular"
#       Question.question_four_deciduous
#     when 5
#       @@leaf_shape = "Oblanceolate"
#       Question.question_four_deciduous
#     when 6
#       @@leaf_shape = "Palmate"
#       Question.question_four_deciduous
#     when 7
#       @@leaf_shape = "Lobed"
#       Question.question_four_deciduous
#     when 8
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 8"
#       self.question_three_deciduous
#     end
#   end
#   Application.question_three_deciduous

#   # ____________Question_4_Deciduous_Bark-Texture___________________________

#   def self.question_four_deciduous
#     case @@response
#     when 1
#       @@bark_texture = "Smooth"
#       Question.question_five_deciduous
#     when 2
#       @@bark_texture = "Bumpy"
#       Question.question_five_deciduous
#     when 3
#       @@bark_texture = "Furrowed"
#       Question.question_five_deciduous
#     when 4
#       @@bark_texture = "Scaled"
#       Question.question_five_deciduous
#     when 5
#       @@bark_texture = "Peeling"
#       Question.question_five_deciduous
#     when 6
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 6"
#       self.question_four_deciduous
#     end
#   end
#   Application.question_four_deciduous


#   # ____________Question_5_Deciduous_Bark-Color___________________________

#   def self.question_five_deciduous
#     case @@response
#     when 1
#       @@bark_color = "brown"
#       Question.question_six_deciduous
#     when 2
#       @@bark_color = "gray-brown"
#       Question.question_six_deciduous
#     when 3
#       @@bark_color = "gray"
#       Question.question_six_deciduous
#     when 4
#       @@bark_color = "red-brown"
#       Question.question_six_deciduous
#     when 5
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 5"
#       self.question_five_deciduous
#     end
#   end
#   Application.question_five_deciduous

#   # ____________Question_6_Deciduous_Twigs___________________________

#   def self.question_six_deciduous
#     case @@response
#     when 1
#       @@twigs = "Smooth"
#       Question.question_seven_deciduous
#     when 2
#       @@twigs = "Hairy"
#       Question.question_seven_deciduous
#     when 3
#       @@twigs = "Rough"
#       Question.question_seven_deciduous
#     when 4
#       @@twigs = "Peeling"
#       Question.question_seven_deciduous
#     when 5
#       @@twigs = "Thorny"
#       Question.question_seven_deciduous
#     when 6
#       @@twigs = "Sticky"
#       Question.question_seven_deciduous
#     when 7
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 7"
#       self.question_six_deciduous
#     end
#   end
#   Application.question_six_deciduous


#   # ____________Question_7_Deciduous_Fruits___________________________

#   def self.question_seven_deciduous
#     case @@response
#     when 1
#       @@fruit = "Capsules"
#       Question.question_eight_deciduous
#     when 2
#       @@fruit = "Dry Seed"
#       Question.question_eight_deciduous
#     when 3
#       @@fruit = "Acorns"
#       Question.question_eight_deciduous
#     when 4
#       @@fruit = "Samaras"
#       Question.question_eight_deciduous
#     when 5
#       @@fruit = "FLeshy"
#       Question.question_eight_deciduous
#     when 6
#       @@fruit = "Cones"
#       Question.question_eight_deciduous
#     when 7
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 7"
#       self.question_seven_deciduous
#     end
#   end
#   Application.question_seven_deciduous


#   # ____________Question_8_Deciduous_Flower-Shape___________________________

#   def self.question_eight_deciduous
#     case @@response
#     when 1
#       @@flower_shape = "Inconspicuous"
#       Question.question_nine_deciduous
#     when 2
#       @@flower_shape = "Round"
#       Question.question_nine_deciduous
#     when 3
#       @@flower_shape = "Star or Cross Shaped"
#       Question.question_nine_deciduous
#     when 4
#       @@flower_shape = "Bell-Shaped"
#       Question.question_nine_deciduous
#     when 5
#       @@flower_shape = "Cup-Shaped"
#       Question.question_nine_deciduous
#     when 6
#       @@flower_shape = "Other"
#       Question.question_nine_deciduous
#     when 7
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 7"
#       self.question_eight_deciduous
#     end
#   end
#   Application.question_eight_deciduous

#   # ____________Question_9_Deciduous_Flower-Color___________________________

#   def self.question_nine_deciduous
#     case @@response
#     when 1
#       @@flower_color = "Yellow"
#       # Question.question_nine_deciduous
#     when 2
#       @@flower_color = "Red"
#       # Question.question_nine_deciduous
#     when 3
#       @@flower_color = "White"
#       # Question.question_nine_deciduous
#     when 4
#       @@flower_color = "Orange"
#       # Question.question_nine_deciduous
#     when 5
#       @@flower_color = "Purple"
#       # Question.question_nine_deciduous
#     when 6
#       @@flower_color = "Blue"
#       # Question.question_nine_deciduous
#     when 7
#       @@flower_color = "Brown"
#       # Question.question_nine_deciduous
#     when 8
#       @@flower_color = "Green"
#       # Question.question_nine_deciduous
#     when 9
#       @@flower_color = "Pink"
#       # Question.question_nine_deciduous
#     when 10
#       Help.list_all_trees
#     else
#       puts "Please enter a number between 1 and 10"
#       self.question_nine_deciduous
#     end
#   end
#   Application.question_nine_deciduous



end
