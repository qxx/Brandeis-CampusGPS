class Path < ActiveRecord::Base
  validates :description, presence: true
  validates :distance, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
end
