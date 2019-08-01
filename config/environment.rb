require "sinatra/activerecord"
require "require_all"
require "pry"
require "tty-prompt"
require "colorize"

require_all './lib'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/trees.db')
ActiveRecord::Base.logger = nil

system "clear"
Application.get_username
system "clear"

response_main_menu = Application.main_menu
Application.main_menu_response(response_main_menu)

response_question_one = Question.question_one
Application.question_one_response(response_question_one)

if response_question_one == 1
  response_question_two_conifer = Question.question_two_conifer
  Application.question_two_conifer_response(response_question_two_conifer)

  response_question_three_conifer = Question.question_three_conifer
  Application.question_three_conifer_response(response_question_three_conifer)

  response_question_four_conifer = Question.question_four_conifer
  Application.question_four_conifer_response(response_question_four_conifer)

  response_question_five_conifer = Question.question_five_conifer
  Application.question_five_conifer_response(response_question_five_conifer)

  response_question_six_conifer = Question.question_six_conifer
  Application.question_six_conifer_response(response_question_six_conifer)

elsif response_question_one == 2
  response_question_two_deciduous = Question.question_two_deciduous
  Application.question_two_deciduous_response(response_question_two_deciduous)

  response_question_three_deciduous = Question.question_three_deciduous
  Application.question_three_deciduous_response(response_question_three_deciduous)

  response_question_four_deciduous = Question.question_four_deciduous
  Application.question_four_deciduous_response(response_question_four_deciduous)

  response_question_five_deciduous = Question.question_five_deciduous
  Application.question_five_deciduous_response(response_question_five_deciduous)

  response_question_six_deciduous = Question.question_six_deciduous
  Application.question_six_deciduous_response(response_question_six_deciduous)

  response_question_seven_deciduous = Question.question_seven_deciduous
  Application.question_seven_deciduous_response(response_question_seven_deciduous)

  response_question_eight_deciduous = Question.question_eight_deciduous
  Application.question_eight_deciduous_response(response_question_eight_deciduous)

  response_question_nine_deciduous = Question.question_nine_deciduous
  Application.question_nine_deciduous_response(response_question_nine_deciduous)

end
