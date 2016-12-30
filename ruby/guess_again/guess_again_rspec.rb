require_relative 'guess_again'

describe Guessagain do
  let(:game) { Guessagain.new }

  it "request word from a user" do
    expect(game.request_word("dog")).to eq "dog"
  end
  #ends string receipt do loop

  it "request names, rules" do
  end
  #end user name do loop

  it "compares letter and adds to array" do
  end
  #ends compare letter do loop

  it "if complete win, else taunt" do
  end
  #ends win or taunt do loop

end
#ends describe do loop