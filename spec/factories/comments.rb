FactoryBot.define do
  factory :comment do
    comments { 'コメント' }
    association :user
    association :item
  end
end
