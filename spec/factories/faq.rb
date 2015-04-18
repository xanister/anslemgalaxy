FactoryGirl.define do

  factory :faq, :class => 'Faq' do
    
    question 'Can I play a zombie?'
    
    trait :no_question do 
      question nil
    end

    trait :visible do 
      visible 1
    end

  end

end
