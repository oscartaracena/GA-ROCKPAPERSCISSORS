# rsp.rb
require 'sinatra'
comp_guess=["rock","scissors","paper"]


get '/' do
erb :home
end

get '/get_play' do
erb :rotate
end

post '/game_play' do
	guess = comp_guess.shuffle[0]
	input = params[:input]
	#guess = params[:guess]
	erb :rotate, :locals =>{'input'=>input,'guess'=>guess}

	if input == "rock" && guess == "paper"
	     return "Computer Wins - Paper covers Rock."

	    elsif  guess == "rock" &&  input == "paper"
	     return "Player Wins - Paper covers Rock"

	    elsif  guess == "paper" && input == "scissors"
	      return "Player Wins -Scissor cuts paper"

	    elsif  guess == "scissors" && input == "paper"
	     return "Computer Wins - Scissor cuts paper"

	    elsif  guess == "scissors" && input == "rock"
	      return "Player Wins - Rock smashes Scissor."

	    elsif  guess == "rock" && input == "scissors"
	     return "Computer Wins - Rock smashes Scissor"

	    elsif  guess == "scissors" && input == "scissors"
	      return "tie game - scissors"
	    elsif  guess == "paper" && input == "paper"
	     return "tie game - paper"
	    elsif  guess == "rock" && input == "rock"
	     return "tie game -rock"
	    else
	end
end
