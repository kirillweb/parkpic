FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    about { Faker::Lorem.sentence }
    password 'testing1'
  #  photos { create_list(:photo, 120) }
  end

end
