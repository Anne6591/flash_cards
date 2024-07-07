require './lib/turn'
require './lib/card'

  RSpec.describe Turn do
    it 'exists' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)
      expect(turn).to be_instance_of(Turn)
      expect(turn.card).to eq(card)
    end

    it 'has a guess' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)
      expect(turn.guess).to eq("Juneau")
    end

    it 'can tell if the answer is correct' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)
      expect(turn.correct?).to eq(true)
    end

    it 'can give feedback' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)
      turn = Turn.correct? = "correct"
      expect(turn.feedback).to eq("correct" || "incorrect")
    end


    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
end







