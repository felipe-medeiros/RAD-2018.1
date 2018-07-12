class Student < ApplicationRecord
  belongs_to :course

  has_many :contacts

  validates :nome, presence: true
  validates :matricula, presence: true
  validates :senha, presence: true
  validates :ano, presence: true
  validates :semestre, presence: true

  accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: :true
end
