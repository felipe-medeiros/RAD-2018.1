class Course < ApplicationRecord
	has_one :coordinator
	has_many :students

	validates :nome, presence: true
	validates :sigla, presence: true
	validates :site, presence: true

	accepts_nested_attributes_for :coordinator
end
