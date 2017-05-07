class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0 }
  validates :category, presence: true
  validates :company, presence: true
  validates :location, presence: true

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  scope :published, -> { where(is_hidden: false) }
  scope :recent, -> { order('created_at DESC') }
  scope :company, -> { order("company") }
  scope :category, -> { order("category") }
  scope :location, -> { order("location") }
  scope :random5, -> { limit(5).order("RANDOM()") }

  has_many :resumes
end
