# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :record, class_name: 'User'

  validates :user, :record, presence: true
end
