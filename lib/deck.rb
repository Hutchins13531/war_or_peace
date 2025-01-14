require './lib/card'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
      @cards[index].rank
  end

  def high_ranking_cards
    high_ranking_cards = cards.select { |card| card.rank > 10}
  end

  def percent_high_ranking #frequency percentage
    (high_ranking_cards.count.fdiv(cards.count) * 100).round(2)
  end

  def remove_card
    cards.shift
  end

  def add_card(new_card)
    cards << new_card
  end
end
