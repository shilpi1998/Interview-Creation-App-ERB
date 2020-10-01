class Interview < ApplicationRecord
  validates :title, :presence => true
  validate :participant_count
  has_many :interviewparticipants
  has_many :participants, :through => :interviewparticipants

  private
   def end_must_be_after_start
     if :starttime >= :endtime
       errors.add(:endtime, "must be after start time")
     end
   end

   def participant_count
     #@interview = Interview.find(params[:id])
       if interviewparticipants.count('interview_id') < 1
         errors.add(:interviewparticipants, "must contain atleast 2 participants")
       end
     end
end
