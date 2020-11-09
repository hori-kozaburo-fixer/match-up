FactoryBot.define do
  factory :user do
    nickname       { Faker::Name.name }
    email          { Faker::Internet.free_email }
    password       { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    full_name      { ForgeryJa(:name).full_name }
    full_name_kana { ForgeryJa(:name).full_name(:to => ForgeryJa::KANA) }
    birth_day      { Faker::Date.birthday(min_age: 18, max_age: 65) }
    sex            { "男" }
    self_introduction { Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false) }
    img_name       { Faker::Avatar.image }
    team_id        { 1 }
  end
end
