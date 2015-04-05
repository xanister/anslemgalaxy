require 'rails_helper'

RSpec.describe Player, :type => :model do

  let(:player) { FactoryGirl.build_stubbed(:player) }

  it 'should be valid' do
    expect(player).to be_valid
  end

  it { should belong_to(:user) }
  it { should belong_to(:race) }
  it { should belong_to(:profession) }
  it { should have_many(:item)}

  context 'it has too many base points' do
    let(:mr_beefy) { FactoryGirl.build_stubbed(:player, :mr_beefy) }

    it 'should not be valid' do
      expect(mr_beefy).to_not be_valid
    end
  end

end
