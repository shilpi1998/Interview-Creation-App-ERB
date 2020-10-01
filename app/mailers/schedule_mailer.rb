class ScheduleMailer < ApplicationMailer
  default from: 'abc@gmail.com'
  CONTACT_EMAIL = 'def@gmail.com'

  def schedule(interview)
      @interview = interview
        @interview.interviewparticipants.each do |participant|
        if !participant.empty?
          mail to: participant.email, subject: "Your interview is Scheduled"
        end
    end

   def reminder(interview)
        @interview = interview
          @interview.interviewparticipants.each do |participant|
          if !participant.empty?
            mail to: participant.email, subject: "Reminder for your interview"
          end
      end

    def update(interview)
         @interview = interview
         @interview.interviewparticipants.each do |participant|
        if !participant.empty?
          mail to: participant.email, subject: "Update for your interview"
        end
    end

end
