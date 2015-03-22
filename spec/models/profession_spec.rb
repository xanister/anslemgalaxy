require 'rails_helper'

RSpec.describe Profession, :type => :model do

  let(:profession) { FactoryGirl.build_stubbed(:profession) }

  it 'should be valid' do
    expect(profession).to be_valid
  end
end