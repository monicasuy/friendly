class Hobby < ApplicationRecord
  validates_presence_of :name, :category
  belongs_to :user
end
