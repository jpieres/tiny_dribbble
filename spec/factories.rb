FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "12345678"
    password_confirmation "12345678"

  end

  factory :shot do |s|
    s.description "A long description"
    s.user
  end


end