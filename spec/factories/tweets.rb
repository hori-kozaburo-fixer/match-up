FactoryBot.define do
  factory :tweet do
    name    { Faker::Lorem.sentence } 
    text    { Faker::Lorem.sentences }
    team_id { 1 }
    image   { Faker::Avatar.image }
    association :user
  end
end
