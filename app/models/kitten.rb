class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true,  numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 20 }
  validates :cuteness, :softeness, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
