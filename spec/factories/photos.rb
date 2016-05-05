# spec/factories/articles.rb
FactoryGirl.define do
  factory :photo do
    sequence(:source) { |n| "http://some.photo/url#{n}.png" }
    sequence(:caption) { |n| "A caption for a photo #{n}" }
  end
end
