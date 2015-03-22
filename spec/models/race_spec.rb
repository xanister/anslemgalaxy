require 'rails_helper'

RSpec.describe Race, :type => :model do

  let(:race) { FactoryGirl.build_stubbed(:race) }

  it 'should be valid' do
    expect(race).to be_valid
  end
end
