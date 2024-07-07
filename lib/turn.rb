class Turn 
attr_reader :guess, 
            :card
            :feedback

  def initialize(guess,card, feedback) 
    @guess = guess
    @card = card
  end  

  def correct?
    @card.answer == @guess
  end

 
def feedback
    if correct?
        puts "correct"
    else
        puts "incorrect"
    end
end