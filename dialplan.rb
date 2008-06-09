adhearsion {
  ExecutableContext.each do |context|
    instance_eval eval(context.name)
  end
}

greet {
  play 'welcome'
}

please_wait {
  play 'please-wait'
}

dial_jay {
  dial 'SIP/some_trunk/14155244444'
}

jay_voicemail {
  voicemail 1337
}

hangup {
  hangup
}