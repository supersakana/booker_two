FactoryBot.define do
    factory :flight do
      trait :atl_orf do
        datetime { "#{Date.tomorrow} '08:00AM'" }
      end
    end
  end