class Course < ApplicationRecord
	has_one :coordinator

	accepts_nested_attributes_for :coordinator
end
