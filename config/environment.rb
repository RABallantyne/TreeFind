require "sinatra/activerecord"
require "require_all"
require "pry"
require "tty-prompt"
require "colorize"

require_all './lib'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/trees.db')
ActiveRecord::Base.logger = nil
# binding.pry
system "clear"
Application.get_username
system "clear"
Application.main_menu
# system "clear"

# Application.main_menu
# system"clear"
# Favorite.add_to_favorites
# Favorite.show_favorites