FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"

    factory :admin do
      admin true
    end
  end

  factory :computer do
    name "example_name"
    status false 
    price 500
    user
  end

end