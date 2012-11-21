# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :estimation do
    total_metrics ""
    total_complexity ""
    view_type_factor ""
    percentage_reuse ""
    total_web_points ""
    effort ""
  end
end
