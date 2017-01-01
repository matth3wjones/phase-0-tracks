require_relative 'guess_again'

describe Guessagain do
  let(:game) {Guessagain.new}
  let(:word) { 'dog'}

  it "splits word into array" do
    expect(game.splitr(word)).to eq ["d", "o", "g"]
  end
  #ends method to separate word into array of letters

  it "checks if guess is present" do
    expect(game.checkr("d", ["d", "o", "g"])).to eq true
  end
  #end method to accept guess letter, scan array to see if present

  it "stores old guesses" do
    expect(game.prev_guesses("e")).to be false
    expect(game.prev_guesses("e")).to be true
  end

  it "hide the real array" do
    expect(game.hider(["d", "o", "g"])).to eq ["_", "_", "_"]
  end
  #ends hide the real array

  it "displays correct guesses in array" do
    game.hider(game.splitr(word)).join(' ')
    expect(game.replacer("d")).to eq "d _ _"
  end
  #ends method to display correct guesses in array

end
#ends describe do loop