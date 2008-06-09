class FlowManagerController < ApplicationController
  
  def index
    @contexts = ExecutableContext.find :all, :order => :position
    @new_context = ExecutableContext.new
  end
  
  def order
    new_ordered_ids = params["call-flow"]
    ExecutableContext.transaction do
      new_ordered_ids.each_with_index do |id,position|
        ExecutableContext.find(id).update_attributes :position => position
      end
    end
    
    render :nothing => true
  end
  
end
