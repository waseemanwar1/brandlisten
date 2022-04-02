require 'singleton'

class FootBallData
  include Singleton

  attr_accessor :list
end