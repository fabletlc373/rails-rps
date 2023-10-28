class GameController < ApplicationController
  @@outcomes = ['rock', 'paper', 'scissors']
  def user_played_rock
    otherhand = @@outcomes.sample(1)[0]
    
    @msg0 = "We played rock!"
    @msg1 = "They played #{otherhand}!"
    if otherhand=='scissors'
      @msg2 = "We won!"
    elsif otherhand=='rock'
      @msg2 = "We tied!"
    else
      @msg2 = "We lost!"
    end
    
    render({:template => "game_templates/results"})

  end

  def user_played_paper
    @msg0 = "We played paper!"
    otherhand = @@outcomes.sample(1)[0]
    @msg1 = "They played #{otherhand}!"
    if otherhand=='rock'
      @msg2 = "We won!"
    elsif otherhand=='paper'
      @msg2 = "We tied!"
    else
      @msg2 = "We lost!"
    end

    render({:template => "game_templates/results"})

  end
  
  def user_played_scissors
    @msg0 = "We played scissors!"
    otherhand = @@outcomes.sample(1)[0]
    @msg1 = "They played #{otherhand}!"
    if otherhand=='paper'
      @msg2 = "We won!"
    elsif otherhand=='scissors'
      @msg2 = "We tied!"
    else
      @msg2 = "We lost!"
    end
    render({:template => "game_templates/results"})
  end

  def go_home
    render({:template => "game_templates/home"})
  end
end
