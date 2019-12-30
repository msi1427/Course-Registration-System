class Course < ApplicationRecord
  has_many :line_items
  before_destroy :ensure_not_referenced
  validates :title, :number, :department, :semester, :credit, presence:true
  validates :title, :number, uniqueness:true
  validates :semester, numericality:{greater_than: 0}
  validates :credit, numericality:{greater_than: 0.0}

  private
  def ensure_not_referenced
    unless line_items.empty?
      errors.add(:base, 'Line Items Present')
      throw :abort
    end
  end
end
