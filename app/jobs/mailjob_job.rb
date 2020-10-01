class MailjobJob < ApplicationJob
  queue_as :default

  def perform(interview, field)
    # Do something later
     interviewid = interview.id
     begin
        if Interview.find(interview.id)
          if (field == 'schedule')
            ScheduleMailer.schedule(interview).deliver_later!
          end
          if (field == 'reminder')
              if interview.start_time <=30.minutes && interview.start_time - Time.now >=25.minutes
                ScheduleMailer.reminder(interview).deliver_later!
              end
          end
          if (field == 'update')
            ScheduleMailer.update(interview).deliver_later!
          end
        end
     end
  end
end
