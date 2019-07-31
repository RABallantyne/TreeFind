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
    output = {"My tree is coniferous." => 1,
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
    puts "What needle arrangement does your tree have?"
    puts "    1. Needles are in clusters of 2-3."
    puts "    2. Needles are in clusters of 5."
    puts "    3. Needles are flat."
    puts "    4. Needles are sharp."
    puts "    5. Needles are scaled."
    puts "    6. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

# ____________Question_3_Conifer_Cones___________________________

def self.question_three_conifer
  system "clear"
  puts "Your needles are XX! There are XX trees available."
  puts "A conifer's 'fruit' can be a woody or papery cone, or the tree can have berries."
  puts "What kind of cones does your tree have?"
  puts "    1. Cones are woody."
  puts "    2. Cones are papery."
  puts "    3. The tree has berries."
  puts "    4. See a list of x remaining trees."
  @@response = gets.chomp.to_i
end


# ____________Question_4_Conifer_Bark-Texture___________________________

def self.question_four_conifer
  system "clear"
  puts "Your cones are XX! There are XX trees available."
  puts "A tree's bark can be very distinctive. Bark can be smooth or bumpy, be furrowed with deep ridges, have scales, or be peeling and papery."
  puts "What kind of bark does your tree have?"
  puts "    1. Bark is smooth."
  puts "    2. Bark is bumpy."
  puts "    3. Bark is furrowed."
  puts "    4. Bark is scaled."
  puts "    5. Bark is peeling."
  puts "    6. See a list of x remaining trees."
  @@response = gets.chomp.to_i
end

# ____________Question_5_Conifer_Bark-Color___________________________

def self.question_five_conifer
  system "clear"
  puts "Your bark is XX! There are XX trees available."
  puts "The color of tree bark also varies broadly."
  puts "What color bark does your tree have?"
  puts "    1. Bark is brown."
  puts "    2. Bark is gray-brown."
  puts "    3. Bark is gray."
  puts "    4. Bark is red-brown."
  puts "    5. See a list of x remaining trees."
  @@response = gets.chomp.to_i
end

# ____________Question_6_Conifer_Twigs___________________________

def self.question_six_conifer
  system "clear"
  puts "Your bark is XX! There are XX trees available."
  puts "What texture are the tree's twigs?"
  puts "    1. Twigs are smooth."
  puts "    2. Twigs are hairy."
  puts "    3. Twigs are rough."
  puts "    4. Twigs are peeling."
  puts "    5. Twigs are thorny."
  puts "    6. Twigs are sticky."
  puts "    7. See a list of x remaining trees."
  @@response = gets.chomp.to_i
end




#__________________Deciduous_______________________________

# ____________Question_2_Deciduous_Leaf-Arrangement___________________________

  def self.question_two_deciduous
    system "clear"
    puts "Your tree is deciduous! There XX available deciduous trees."
    puts "The way a tree's leaves are arranged can help you identify the species."
    puts "What leaf arrangement does your tree have?"
    puts "    1. Leaves are opposite."
    puts "    2. Leaves are alternate."
    puts "    3. Leaves are whorled."
    puts "    4. Leaves are basal."
    puts "    5. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

  # ____________Question_3_Deciduous_Leaf-Shape___________________________

  def self.question_three_deciduous
    system "clear"
    puts "Your leaves are XX! There XX trees available."
    puts "The shape of a leaf can also be very distinctive."
    puts "What shape are your leaves?"
    puts "    1. Leaves are pinnate."
    puts "    2. Leaves are narrow."
    puts "    3. Leaves are deltoid."
    puts "    4. Leaves are orbicular."
    puts "    5. Leaves are oblanceolate."
    puts "    6. Leaves are palmate."
    puts "    7. Leaves are lobed."
    puts "    8. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

  # ____________Question_4_Deciduous_Bark-Texture___________________________

  def self.question_four_deciduous
    system "clear"
    puts "Your cones are XX! There are XX trees available."
    puts "A tree's bark can be very distinctive."
    puts "Bark can be smooth or bumpy, be furrowed with deep ridges, have scales, or be peeling and papery."
    puts "What kind of bark does your tree have?"
    puts "    1. Bark is smooth."
    puts "    2. Bark is bumpy."
    puts "    3. Bark is furrowed."
    puts "    4. Bark is scaled."
    puts "    5. Bark is peeling."
    puts "    6. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

  # ____________Question_5_Deciduous_Bark-Color___________________________

  def self.question_five_deciduous
    system "clear"
    puts "Your bark is XX! There are XX trees available."
    puts "The color of tree bark also varies broadly."
    puts "What color bark does your tree have?"
    puts "    1. Bark is brown."
    puts "    2. Bark is gray-brown."
    puts "    3. Bark is gray."
    puts "    4. Bark is red-brown."
    puts "    5. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

  # ____________Question_6_Deciduous_Twigs___________________________

  def self.question_six_deciduous
    system "clear"
    puts "Your bark is XX! There are XX trees available."
    puts "What texture are the tree's twigs?"
    puts "    1. Twigs are smooth."
    puts "    2. Twigs are hairy."
    puts "    3. Twigs are rough."
    puts "    4. Twigs are peeling."
    puts "    5. Twigs are thorny."
    puts "    6. Twigs are sticky."
    puts "    7. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

  # ____________Question_7_Deciduous_Fruits___________________________

  def self.question_seven_deciduous
    system "clear"
    puts "Your twigs are XX! There are XX trees available."
    puts "What type of fruit does the tree have?"
    puts "    1. The tree has capsules."
    puts "    2. The tree has dry seed."
    puts "    3. The tree has acorns."
    puts "    4. The tree has samaras."
    puts "    5. The tree has fleshy fruit."
    puts "    6. The tree has cones."
    puts "    7. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

  # ____________Question_8_Deciduous_Flower-Shape___________________________

  def self.question_eight_deciduous
    system "clear"
    puts "Your fruits are XX! There are XX trees available."
    puts "What shape are the tree's flowers?"
    puts "    1. Flowers are inconspicuous."
    puts "    2. Flowers are round."
    puts "    3. Flowers are star or cross shaped."
    puts "    4. Flowers are bell-shaped."
    puts "    5. Flowers are cup-shaped."
    puts "    6. Flowers are another shape."
    puts "    7. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

  # ____________Question_9_Deciduous_Flower-Color___________________________

  def self.question_nine_deciduous
    system "clear"
    puts "Your flowers are XX! There are XX trees available."
    puts "What color are the tree's flowers?"
    puts "    1. Flowers are yellow."
    puts "    2. Flowers are red."
    puts "    3. Flowers are white."
    puts "    4. Flowers are orange."
    puts "    5. Flowers are purple."
    puts "    6. Flowers are blue."
    puts "    7. Flowers are brown."
    puts "    8. Flowers are green."
    puts "    9. Flowers are pink."
    puts "    10. See a list of x remaining trees."
    @@response = gets.chomp.to_i
  end

end
