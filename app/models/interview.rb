class Interview < ApplicationRecord
  validates :title, :presence => true
  has_many :interviewparticipants
  has_many :participants, :through => :interviewparticipants
end
