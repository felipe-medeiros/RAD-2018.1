class Contact < ApplicationRecord
  belongs_to :student

  validates :tipo, presence: true, inclusion: {in: %w(email telefone facebook instagram linkedin twitter) }
  validates :valor, presence: true
end
