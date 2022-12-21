FactoryBot.define do
  factory :airport do
    trait :atlanta do
      location { 'Atlanta, Georgia' }
      code { 'ATL' }
    end

    trait :norfolk do
      location { 'Norfolk, Virginia' }
      code { 'ORF' }
    end
  end
end
