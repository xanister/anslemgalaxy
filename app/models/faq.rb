class Faq < ActiveRecord::Base
  validates_presence_of(:question) 
  scope :visible, -> { where(visible: true) }
end
