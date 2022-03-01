# frozen_string_literal: true

class Task < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
end
