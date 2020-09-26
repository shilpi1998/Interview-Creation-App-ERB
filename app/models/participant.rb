class Participant < ApplicationRecord
  validates :name, :presence => true
  has_many :interviewparticipants
  has_many :interviews, :through => :interviewparticipants
end
