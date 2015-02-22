require 'game'

describe Game do

  let(:game){Game.new}
  let(:player){double :player}

  it 'can know the result if player chooses Paper' do
    allow(player).to receive(:weapon).and_return('Paper')
    if game.weapon == 'Rock'
        game.won
    elsif game.weapon == 'Scissors'
        game.lost
    else
        game.draw
    end
  end



end