FactoryBot.define do
  factory :dog do
    sequence(:tracking_id) { |n| n }
    name { Faker::Name.name }
    status 'adoptable'
    sequence(:microchip) { |n| "MC-#{n}" }

    factory :dog_with_photo_and_attachment do
      after(:build) do |dog|
        build(:attachment, attachable: dog)
        build(:photo, dog: dog)
      end
    end

    trait :adoptable do
      status 'adoptable'
    end

    trait :completed do
      status 'completed'
    end
  end
end
