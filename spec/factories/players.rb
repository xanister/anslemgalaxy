FactoryGirl.define do

  factory :player, :class => 'Player' do
    name 'superpowersauce'
    sprite 'MCNALSFxzs134'
    user_id 1
    region_server 'loadbalancer.anslem.region'
    mental 75
    physical 75
    social 75
    race_id 1
    profession_id 1

    trait :mr_beefy do
      mental 275
      physical 475
      social 575
    end
  end

end
