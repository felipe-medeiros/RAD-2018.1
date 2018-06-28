class Course < ApplicationRecord
	has_one :coordinator
	has_many :students

	accepts_nested_attributes_for :coordinator
end
