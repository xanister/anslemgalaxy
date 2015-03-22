require 'rails_helper'

RSpec.describe Item, :type => :model do

  let(:item) { FactoryGirl.build_stubbed(:item) }

  it 'should be valid' do
    expect(item).to be_valid
  end
end