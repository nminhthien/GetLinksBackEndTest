FactoryBot.define do
  factory :user do
    username 'thiennguyen'
    email 'thiennguyen@test.com'
    password 'thi3nnguyEn@#'
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end
end
