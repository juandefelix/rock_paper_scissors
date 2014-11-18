# require 'pry-byebug'
class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    check_players(player1, player2)

    combination = player1[1] + player2[1]
    return player1 if ['PP','RR','SS'].include? combination
    ['RS', 'SP', 'PR'].include?(combination) ? player1 : player2
  end

  def self.tournament_winner(tournament)
    # binding.pry
    # find a match
    # play the match
    return self.winner(tournament[0], tournament[1] ) if self.find_a_match(tournament)

    self.tournament_winner([self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1])])

    # substitute the match for the winner
    # do this until there's no more matches
  end





private

  def self.check_players(player1, player2)
    strategies = [player1[1], player2[1]]
    allowed_strategies = ['P','R','S']

    raise(NoSuchStrategyError, "Strategy must be one of R,P,S") unless (strategies - allowed_strategies).length == 0
  end

  def self.find_a_match(tournament)
    # binding.pry
    tournament[0][0].class == String && tournament[1][0].class == String
  end
end

rock = ['Armando','R'] ; paper = ['Dave','P'] ; scissors = ['Sam','S']

tourney = [
        [
          [ ["Armando", "P"], ["Dave", "S"] ],      
          [ ["Richard", "R"], ["Michael", "S"] ]
        ],
        [
          [ ["Allen", "S"], ["Omer", "P"] ],
          [ ["David E.", "R"], ["Richard X.", "P"] ]
        ]
      ]


# p RockPaperScissors.winner(rock, scissors) == rock
# p RockPaperScissors.winner(paper, scissors) == scissors
# p RockPaperScissors.winner(rock, paper) == paper
# p RockPaperScissors.winner(scissors, ['Dave','S']) == scissors
# puts
# p RockPaperScissors.tournament_winner([rock,paper]) == paper
# puts
# p RockPaperScissors.tournament_winner(tourney) == ['Richard', 'R']

# RockPaperScissors.winner(rock, ['Dave', 'w'])