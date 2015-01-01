current_countdown = 0

SCHEDULER.every '1s' do

  if current_countdown == 0
  	current_countdown = 10
  else
  	current_countdown = current_countdown - 1
  end

  send_event('countdown', { current: current_countdown})

end