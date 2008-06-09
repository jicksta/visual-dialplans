adhearsion {
  ExecutableContext.each do |context|
    instance_eval eval(context.name)
  end
}