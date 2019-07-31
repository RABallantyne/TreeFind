require "tty-prompt"

class Question

  def self.tty_runner
    @@prompt = TTY::Prompt.new
    @@prompt
  end


# ____________Question_1___________________________


  def self.question_one
    system "clear"
    self.tty_runner

    puts "Conifers are trees with cones and needle-like or scale-like leaves that are typically evergreen (retain their leaves throughout the year)."
    puts "Pines and firs are conifers, for example."
    puts "Deciduous trees lose their leaves annually."
    puts "Maples and oaks are deciduous trees."
    puts "Conifers are trees with cones and needle-like or scale-like leaves that are typically evergreen (retain their leaves throughout the year)."
    puts "Pines and firs are conifers, for example."
    puts "Deciduous trees lose their leaves annually."
    puts "Maples and oaks are deciduous trees."
    question = "Is your tree coniferous or deciduous?"
    output = {
      "My tree is coniferous." => 1,
      "My tree is deciduous." => 2,
      "Get help on this question." => 3,
      "Return to Main Menu." => 4
    }

    @@response = @@prompt.select(question, output).to_i
  end


#__________________CONIFERS_______________________________

# ____________Question_2_Conifer_Needle-Arrangement___________________________

  def self.question_two_conifer
    system "clear"
    puts "Your tree is a conifer! There are XX available conifers."
    puts "The way a conifer's needles are arranged can help you identify the species."
    puts "A conifer can have individual or clustered needles, called fasciles."
    puts "Needles can also be flat or sharp."
    question = "What needle arrangement does your tree have?"
    output = {
      "Needles are in clusters of 2-3."  => 1,
      "Needles are in clusters of 5." => 2,
      "Needles are flat." => 3,
      "Needles are sharp." => 4,
      "Needles are scaled." => 5,
      "See a list of x remaining trees." => 6
    }
    @@response = @@prompt.select(question, output).to_i
  end


# ____________Question_3_Conifer_Cones___________________________

def self.question_three_conifer
  system "clear"
  puts "Your needles are XX! There are XX trees available."
  puts "A conifer's 'fruit' can be a woody or papery cone, or the tree can have berries."
  question = "What kind of cones does your tree have?"
  output = {
    "Cones are woody." => 1,
    "Cones are papery." => 2,
    "The tree has berries." => 3,
    "See a list of x remaining trees." => 4
  }
  @@response = @@prompt.select(question, output).to_i
end


# ____________Question_4_Conifer_Bark-Texture___________________________

def self.question_four_conifer
  system "clear"
  puts "Your cones are XX! There are XX trees available."
  puts "A tree's bark can be very distinctive. Bark can be smooth or bumpy, be furrowed with deep ridges, have scales, or be peeling and papery."
  question = "What kind of bark does your tree have?"
  output = {
    "Bark is smooth." => 1,
    "Bark is bumpy." => 2,
    "Bark is furrowed." => 3,
    "Bark is scaled." => 4,
    "Bark is peeling." => 5,
    "See a list of x remaining trees." => 6
  }
  @@response = @@prompt.select(question, output).to_i
end

# ____________Question_5_Conifer_Bark-Color___________________________

def self.question_five_conifer
  system "clear"
  puts "Your bark is XX! There are XX trees available."
  puts "The color of tree bark also varies broadly."
  question = "What color bark does your tree have?""
  output = {
    "Bark is brown." => 1,
    "Bark is gray-brown." => 2,
    "Bark is gray." => 3,
    "Bark is red-brown." => 4,
    "See a list of x remaining trees." => 5
  }
  @@response = @@prompt.select(question, output).to_i
end

# ____________Question_6_Conifer_Twigs___________________________

def self.question_six_conifer
  system "clear"
  puts "Your bark is XX! There are XX trees available."
  question = "What texture are the tree's twigs?"
  output = {
    "Twigs are smooth." => 1,
    "Twigs are hairy." => 2,
    "Twigs are rough." => 3,
    "Twigs are peeling." => 4,
    "Twigs are thorny." => 5,
    "Twigs are sticky." => 6,
    "See a list of x remaining trees." => 7
  }
  @@response = @@prompt.select(question, output).to_i
end




#__________________Deciduous_______________________________

# ____________Question_2_Deciduous_Leaf-Arrangement___________________________

  def self.question_two_deciduous
    system "clear"
    puts "Your tree is deciduous! There XX available deciduous trees."
    puts "The way a tree's leaves are arranged can help you identify the species."
    question = "What leaf arrangement does your tree have?"
    output = {
      "Leaves are opposite." => 1,
      "Leaves are alternate." => 2,
      "Leaves are whorled." => 3,
      "Leaves are basal." => 4,
      "See a list of x remaining trees." => 5
    }
    @@response = @@prompt.select(question, output).to_i
  end

  # ____________Question_3_Deciduous_Leaf-Shape___________________________

  def self.question_three_deciduous
    system "clear"
    puts "Your leaves are XX! There XX trees available."
    puts "The shape of a leaf can also be very distinctive."
    question =  "What shape are your leaves?"
    output = {
      "Leaves are pinnate." => 1,
      "Leaves are narrow." => 2,
      "Leaves are deltoid." => 3,
      "Leaves are orbicular." => 4,
      "Leaves are oblanceolate." => 5,
      "Leaves are palmate." => 6,
      "Leaves are lobed." => 7,
      "See a list of x remaining trees." => 8
    }
    @@response = @@prompt.select(question, output).to_i
  end

  # ____________Question_4_Deciduous_Bark-Texture___________________________

  def self.question_four_deciduous
    system "clear"
    puts "Your cones are XX! There are XX trees available."
    puts "A tree's bark can be very distinctive."
    puts "Bark can be smooth or bumpy, be furrowed with deep ridges, have scales, or be peeling and papery."
    question =  "What kind of bark does your tree have?"
    output = {
      "Bark is smooth." => 1,
      "Bark is bumpy." => 2,
      "Bark is furrowed." => 3,
      "Bark is scaled." => 4,
      "Bark is peeling." => 5,
      "See a list of x remaining trees." => 6
    }
    @@response = @@prompt.select(question, output).to_i
  end

  # ____________Question_5_Deciduous_Bark-Color___________________________

  def self.question_five_deciduous
    system "clear"
    puts "Your bark is XX! There are XX trees available."
    puts "The color of tree bark also varies broadly."
    question =  "What color bark does your tree have?"
    output = {
      "Bark is brown." => 1,
      "Bark is gray-brown." => 2,
      "Bark is gray." => 3,
      "Bark is red-brown." => 4,
      "See a list of x remaining trees." => 5
    }
    @@response = @@prompt.select(question, output).to_i
  end

  # ____________Question_6_Deciduous_Twigs___________________________

  def self.question_six_deciduous
    system "clear"
    puts "Your bark is XX! There are XX trees available."
    question =  "What texture are the tree's twigs?"
    output = {
      "Twigs are smooth." => 1,
      "Twigs are hairy." => 2,
      "Twigs are rough." => 3,
      "Twigs are peeling." => 4,
      "Twigs are thorny." => 5,
      "Twigs are sticky." => 6,
      "See a list of x remaining trees." => 7
    }
    @@response = @@prompt.select(question, output).to_i
  end

  # ____________Question_7_Deciduous_Fruits___________________________

  def self.question_seven_deciduous
    system "clear"
    puts "Your twigs are XX! There are XX trees available."
    question =  "What type of fruit does the tree have?"
    output = {
      "The tree has capsules." => 1,
      "The tree has dry seed." => 2,
      "The tree has acorns." => 3,
      "The tree has samaras." => 4,
      "The tree has fleshy fruit." => 5,
      "The tree has cones." => 6,
      "See a list of x remaining trees." => 7
    }
    @@response = @@prompt.select(question, output).to_i
  end

  # ____________Question_8_Deciduous_Flower-Shape___________________________

  def self.question_eight_deciduous
    system "clear"
    puts "Your fruits are XX! There are XX trees available."
    question =  "What shape are the tree's flowers?"
    output = {
      "Flowers are inconspicuous." => 1,
      "Flowers are round." => 2,
      "Flowers are star or cross shaped." => 3,
      "Flowers are bell-shaped." => 4,
      "Flowers are cup-shaped." => 5,
      "Flowers are another shape." => 6,
      "See a list of x remaining trees." => 7
    }
    @@response = @@prompt.select(question, output).to_i
  end

  # ____________Question_9_Deciduous_Flower-Color___________________________

  def self.question_nine_deciduous
    system "clear"
    puts "Your flowers are XX! There are XX trees available."
    question =  "What color are the tree's flowers?"
    output = {
      "Flowers are yellow." => 1,
      "Flowers are red." => 2,
      "Flowers are white." => 3,
      "Flowers are orange." => 4,
      "Flowers are purple." => 5,
      "Flowers are blue." => 6,
      "Flowers are brown." => 7,
      "Flowers are green." => 8,
      "Flowers are pink." => 9,
      "See a list of x remaining trees." => 10
    }
    @@response = @@prompt.select(question, output).to_i
  end

end
