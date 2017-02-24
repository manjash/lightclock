class Researchorder < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true
  validates :phone, presence: true
  validates :organisation, presence: true
  validates :research_subject, presence: true
  validates :time, presence: true
end
