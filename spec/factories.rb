FactoryGirl.define do
  factory :user_genre do

  end
  factory :genre do

  end
  factory :link do

  end
  factory :instrument do

  end
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password "password"

    trait :musician do
      role "musician"
    end

    trait :booker do
      role "booker"
    end
  end
end
