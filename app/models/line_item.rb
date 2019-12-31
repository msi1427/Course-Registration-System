class LineItem < ApplicationRecord
  belongs_to :course
  belongs_to :cart
  belongs_to :user
end
