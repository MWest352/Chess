# frozen_string_literal: true

# Create Player Class
# Each player should have a different color Black or White

# Player Class
class Player
  attr_accessor :name, :color, :moves

  def initialize(name, color)
    @name = name
    @color = color
    @moves = 0
  end
end
