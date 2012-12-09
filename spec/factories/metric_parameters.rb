# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :metric_parameter do
    name ""
    description ""
    value ""
    weight ""
    quantity ""
    optimistic_value ""
    probable_value ""
    pessimistic_value ""
  end
end
