class Coordinator < ApplicationRecord
	belongs_to :course

	validates :nome, presence: true
	validates :matricula, presence: true
	validates :senha, presence: true
end
