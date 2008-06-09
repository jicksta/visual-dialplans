module FlowManagerHelper
  
  def draggable_context(context)
    javascript_tag "new Draggable('#{context_drag_id context}')"
  end
  
  def context_drag_id(context)
    "context_#{context.id}"
  end
  
end
