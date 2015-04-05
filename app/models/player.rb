class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :race
  belongs_to :profession
  has_many :item
  validate :base_traits
  #TODO load from configuration
  MAX_BASE_TRAIT_POINTS = 225

  def base_traits
    base_trait_points = self.mental + self.physical + self.social
    if base_trait_points > MAX_BASE_TRAIT_POINTS
      errors.add(:mental, "traits total can't be more than traits max")
    end
  end
end
