class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :date, :rationale
  # submitted / approved / rejected /
  enum status: { submitted: 0, approved: 1, rejected: 2 }
end


