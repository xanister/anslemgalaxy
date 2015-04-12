FactoryGirl.define do

  factory :user, :class => 'User' do
      email "justin@example.com"
      password "please123"

    trait :admin do
      admin 1
    end
  end

end
