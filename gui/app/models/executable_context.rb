class ExecutableContext < ActiveRecord::Base
  
  acts_as_list
  
  validates_format_of :context_name, :with => /[a-z_][\w_]+/i 
  
end
