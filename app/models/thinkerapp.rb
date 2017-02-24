class Thinkerapp < ApplicationRecord

  mount_uploader :upload_cv, PhotoUploader

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true
  validates :degree, presence: true
  validates :field, presence: true
  validates :upload_cv, presence: true

end
