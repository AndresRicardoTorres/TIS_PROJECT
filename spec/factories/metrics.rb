# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :metric do
    name ""
    value ""
    weight ""
    quantity ""
    pessimistic_value ""
    optimistic_value ""
    probable_value ""
  end
end
