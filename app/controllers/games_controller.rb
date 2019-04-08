class GamesController < ApplicationController
  
  QUESTIONS =[
  	"A t-il les yeux clairs ?",
  	"Est-ce un homme?",
  	"Est-il vegan ?",
  	"Es tu originaire d'aquitaine ?"
  ]


  def create
  	@game = Game.create
  	redirect_to edit_game_path(@game["id"], question_id: 0), method: :get
  end

  def edit
  	@question = QUESTIONS[params["question_id"].to_i]
  end

  def update
  	question_id = params["question_id"].to_i + 1
	@game = Game.find(params["id"])
	@game["answers"] << params["answer"]
	@game.save
	if question_id > 3
		redirect_to game_path(@game["id"]), method: :get
	else
		redirect_to edit_game_path(@game["id"], question_id: question_id), method: :get
	end
  end

  def show
  	@game = Game.find(params["id"])
  end
end
