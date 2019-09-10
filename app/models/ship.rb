class Ship < ActiveRecord::Base
  belongs_to :pirate

  attr_reader :name, :category, :booty

  SHIPS = []

  def initialize(args)
    @name = args[:name]
    @category = args[:category]
    @booty = args[:booty]

    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
