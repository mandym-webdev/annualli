# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.delete_all
questions = Question.create([
  {question:'quesion 1', show_month: 9, show_day: 8},
  {question:'question 2', show_month: 9, show_day: 9},
  {question:'question 3', show_month: 9, show_day: 10}
])

Answer.delete_all
Answer.create([
  {answer: 'mandy q1', question:questions[0], user_id: 1},
  {answer: 'mandy q2', question:questions[1], user_id: 1},
  {answer: 'mandy q3', question:questions[2], user_id: 1},
  {answer: 'dont show q1', question:questions[0]},
  {answer: 'dont show q2', question:questions[1]},
  {answer: 'dont show q3', question:questions[2]}
])
