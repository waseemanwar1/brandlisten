class Team
  include ActiveModel::Validations
  include ActiveModel::AttributeMethods
  extend ActiveModel::Naming

  attr_accessor :name, :p ,:w, :l, :d, :f, :a, :raw, :pts

  validates :name, :p ,:w, :l, :d, :f, :a, :raw, :pts, presence: true
  validates :p ,:w, :l, :d, :f, :a, :raw, :pts, numericality: { only_integer: true }

  def initialize(attrs = {})
    attrs.each do |name, value|
      send("#{name}=", value)
    end
  end
end