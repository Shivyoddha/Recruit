class Answer < ApplicationRecord
  belongs_to :question
  accepts_nested_attributes_for :question
end
