class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :race
  belongs_to :profession
  has_many :item
end
