require 'rails_helper'

RSpec.describe User, :type => :model do

  let(:user) { FactoryGirl.build_stubbed(:user) }

  it 'should be valid' do
    expect(user).to be_valid
  end

  it { should have_many(:players) }

  # TODO add tests for admin when CMS is created

end
