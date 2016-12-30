require_relative 'guess_again'

describe Guessagain do
  let(:game) { Guessagain.new}

  it "separates word into array" do
    expect(game.seperate_word("dog")).to eq ["d", "o", "g"]
  end
  #ends method to separate word into array of letters

  it "checks if guess is present" do
    expect(game.check_a_letter("d", ["d", "o", "g"])).to eq true
  end
  #end method to accept guess letter, scan array to see if present

  it "hide the real array" do
    expect(game.hide_array(["d", "o", "g"])).to eq "_ _ _"
  end
  #ends hide the real array

  it "displays correct guesses in array" do
  end
  #ends method to display correct guesses in array

  it "if complete win, else taunt" do
  end
  #ends win or taunt do loop

end
#ends describe do loop