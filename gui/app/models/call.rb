class Call < ActiveRecord::Base
  
  validates_presence_of :start_time
  
  acts_as_state_machine :initial => :new
  
  def finished!
    self.end_time = Time.now
    
    save
  end
  
  def duration
    real_end = end_time? ? end_time : Time.now
    real_end - start_time
  end
  
end
