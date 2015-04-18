
require 'rails_helper'

RSpec.describe Faq, :type => :model do
  context 'valid' do  

    let(:faq) { (FactoryGirl.build_stubbed :faq) }

    it 'should be valid' do
      expect(faq).to be_valid
    end
  end
  
  context 'invalid no question' do 
  
    let(:faq) { (FactoryGirl.build_stubbed :faq, :no_question) }

    it 'should not be valid' do
      expect(faq).to_not be_valid
    end
  end

  context 'visible' do

    before do
      @faq_visible = FactoryGirl.create(:faq, :visible)
      @faq_not_visible = FactoryGirl.create(:faq)
    end

    it 'only visible should be visible' do
      expect(Faq.visible.first).to eq(@faq_visible)
    end
  end

end
