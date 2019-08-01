class Application


# ____________TITLE_PAGE___________________________

def self.tty_runner
    @@prompt = TTY::Prompt.new
    @@prompt
end

def self.get_username
  tty_runner

  puts "Hello! Welcome to TreeFind!".white.on_green
  puts ""

  question = "Have you logged in before?"

  output = {
    "I have not!" => 1,
    "Sure have!" => 2,
  }

  response = @@prompt.select(question, output).to_i

  if response == 1
    user = @@prompt.ask("What is your name?", default: ENV["USER"])
    User.create(user_name: user)
  else
    question = "Select your User Name:"
    output = User.all.map(&:user_name)
    user = @@prompt.select(question, output)
  end

  @@user = User.find_by(user_name: user)
end

def self.return_username
  @@user
end


# ____________MAIN_MENU___________________________

  def self.main_menu
    tty_runner

    question = "Hello, #{@@user.user_name}! What would you like to do?"

    output = {"Identify a tree." => 1,
      "See a list of all available trees." => 2,
      "Add a tree to your list of favorites" => 3,
      "See your favorite trees" => 4,
      "Learn how to use this app." => 5
    }
    @@response = @@prompt.select(question, output).to_i
  end

  def self.main_menu_response(response)
    case response
    when 1
      unless
        ""
      end
    when 2
      Tree.all_trees
    when 3
      Favorite.add_to_favorites
    when 4
      Favorite.show_favorites
    when 5
      Help.main_menu_help
    else
      puts "Please enter a number between 1 and 4"
    end
  end


# # ____________Question_1_Deciduous/Coniferous___________________________

  def self.question_one_response(response)
    case response
    when 1
      type = "coniferous"
    when 2
      type = "deciduous"
    when 3
      Help.list_trees_by_characteristics
    when 4
      self.main_menu
    else
      puts "Please enter a number between 1 and 4"
      self.question_one_response
    end
  end


# #####_________________CONIFERS_______________________####

#   # ____________Question_2_Conifer_Needle-Arrangement___________________________

  def self.question_two_conifer_response (response)
    case response
    when 1
      needles = "Clusters of 2-3"
    when 2
      needles = "Clusters of 5"
    when 3
      needles = "Flat"
    when 4
      needles = "Sharp"
    when 5
      needles = "Scaled"
    when 6
      puts ""
      puts ""
      puts Tree.all.where("coniferous_deciduous = 'Coniferous'").pluck(:common_name)
    else
      puts "Please enter a number between 1 and 6"
      self.question_two_conifer_response
    end
  end



# # ____________Question_3_Conifer_Cones___________________________

  def self.question_three_conifer_response (response)
    case response
    when 1
      cones = "Woody"
    when 2
      cones = "Papery"
    when 3
      cones = "Berry"
    when 4
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 4"
      self.question_three_conifer_response
    end
  end

#   # ____________Question_4_Conifer_Bark-Texture___________________________

  def self.question_four_conifer_response (response)
    case response
    when 1
      bark_texture = "Smooth"
    when 2
      bark_texture = "Bumpy"
    when 3
      bark_texture = "Furrowed"
    when 4
      bark_texture = "Scaled"
    when 5
      bark_texture = "Peeling"
    when 6
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 6"
      self.question_four_conifer_response
    end
  end


#     # ____________Question_5_Conifer_Bark-Color___________________________

  def self.question_five_conifer_response (response)
    case response
    when 1
      bark_color = "brown"
    when 2
      bark_color = "gray-brown"
    when 3
      bark_color = "gray"
    when 4
      bark_color = "red-brown"
    when 5
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 5"
      self.question_five_conifer_response
    end
  end

#       # ____________Question_6_Conifer_Twigs___________________________

  def self.question_six_conifer_response (response)
    case response
    when 1
      twigs = "Smooth"
    when 2
      twigs = "Hairy"
    when 3
      twigs = "Rough"
    when 4
      twigs = "Peeling"
    when 5
      twigs = "Thorny"
    when 6
      twigs = "Sticky"
    when 7
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 7"
      self.question_six_conifer_response
    end
  end

# ####__________________DECIDUOUS_______________________________####

# # ____________Question_2_Deciduous_Leaf-Arrangement___________________________

  def self.question_two_deciduous_response (response)
    case response
    when 1
      leaves = "Opposite"
    when 2
      leaves = "Alternate"
    when 3
      leaves = "Whorled"
    when 4
      leaves = "Basal"
    when 5
      puts ""
      puts ""
      puts Tree.all.where("coniferous_deciduous = 'Deciduous'").pluck(:common_name)
    else
      puts "Please enter a number between 1 and 5"
      self.question_two_deciduous_response
    end
  end


# # ____________Question_3_Deciduous_Leaf-Shape___________________________

  def self.question_three_deciduous_response (response)
    case response
    when 1
      leaf_shape = "Pinnate"
    when 2
      leaf_shape = "Narrow"
    when 3
      leaf_shape = "Deltoid"
    when 4
      leaf_shape = "Orbicular"
    when 5
      leaf_shape = "Oblanceolate"
    when 6
      leaf_shape = "Palmate"
    when 7
      leaf_shape = "Lobed"
    when 8
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 8"
      self.question_three_deciduous_response
    end
  end

#   # ____________Question_4_Deciduous_Bark-Texture___________________________

  def self.question_four_deciduous_response (response)
    case response
    when 1
      bark_texture = "Smooth"
    when 2
      bark_texture = "Bumpy"
    when 3
      bark_texture = "Furrowed"
    when 4
      bark_texture = "Scaled"
    when 5
      bark_texture = "Peeling"
    when 6
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 6"
      self.question_four_deciduous_response
    end
  end


#   # ____________Question_5_Deciduous_Bark-Color___________________________

  def self.question_five_deciduous_response (response)
    case response
    when 1
      bark_color = "brown"
    when 2
      bark_color = "gray-brown"
    when 3
      bark_color = "gray"
    when 4
      bark_color = "red-brown"
    when 5
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 5"
      self.question_five_deciduous_response
    end
  end

#   # ____________Question_6_Deciduous_Twigs___________________________

  def self.question_six_deciduous_response (response)
    case response
    when 1
      twigs = "Smooth"
    when 2
      twigs = "Hairy"
    when 3
      twigs = "Rough"
    when 4
      twigs = "Peeling"
    when 5
      twigs = "Thorny"
    when 6
      twigs = "Sticky"
    when 7
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 7"
      self.question_six_deciduous_response
    end
  end


#   # ____________Question_7_Deciduous_Fruits___________________________

  def self.question_seven_deciduous_response (response)
    case response
    when 1
      fruit = "Capsules"
    when 2
      fruit = "Dry Seed"
    when 3
      fruit = "Acorns"
    when 4
      fruit = "Samaras"
    when 5
      fruit = "FLeshy"
    when 6
      fruit = "Cones"
    when 7
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 7"
      self.question_seven_deciduous_response
    end
  end


#   # ____________Question_8_Deciduous_Flower-Shape___________________________

  def self.question_eight_deciduous_response (response)
    case response
    when 1
      flower_shape = "Inconspicuous"
    when 2
      flower_shape = "Round"
    when 3
      flower_shape = "Star or Cross Shaped"
    when 4
      flower_shape = "Bell-Shaped"
    when 5
      flower_shape = "Cup-Shaped"
    when 6
      flower_shape = "Other"
    when 7
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 7"
      self.question_eight_deciduous_response
    end
  end

#   # ____________Question_9_Deciduous_Flower-Color___________________________

  def self.question_nine_deciduous_response (response)
    case response
    when 1
      flower_color = "Yellow"
    when 2
      flower_color = "Red"
    when 3
      flower_color = "White"
    when 4
      flower_color = "Orange"
    when 5
      flower_color = "Purple"
    when 6
      flower_color = "Blue"
    when 7
      flower_color = "Brown"
    when 8
      flower_color = "Green"
    when 9
      flower_color = "Pink"
    when 10
      Help.list_all_trees
    else
      puts "Please enter a number between 1 and 10"
      self.question_nine_deciduous_response
    end
  end
end
