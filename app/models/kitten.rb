class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true,  numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 20 }
  validates :cuteness, :softness, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }

  def as_json(_options={})
      { :name => self.name,
        :cuteness => self.cuteness,
        :softness => self.softness
      }  
    end
end
