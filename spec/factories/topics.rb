require 'faker'

FactoryGirl.define do
  factory :topic do |f|
    f.title {Faker::Company.bs}
  end
end
