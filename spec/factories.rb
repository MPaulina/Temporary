FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "user_name_#{n}" }
  end

  factory :gist do
    sequence(:snippet) { |n| "snippet_#{n}" }
    sequence(:lang) { |n| "lang_#{n}" }
    description "description"
    group
  end

  factory :group do
    sequence(:name) { |n| "group_#{n}" }
  end
end
