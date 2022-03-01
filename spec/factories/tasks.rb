# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    text { "Faker::Lorem.word.downcase" }
    user_id { 1 }
  end
end