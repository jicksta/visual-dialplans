class FlowManagerController < ApplicationController
  
  def index
    @contexts = ExecutableContext.find :all
    @new_context = ExecutableContext.new
  end
  
end
