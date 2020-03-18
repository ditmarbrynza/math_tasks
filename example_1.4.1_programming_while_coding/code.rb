platform = gets
platform.chomp!
if platform == 'Windows'
  def action
    puts 'action 1'
  end
elsif platform == 'Linux'
  def action
    puts 'action 2'
  end
else
  def action
    puts 'action 3'
  end
end

# will call needed method, depending from platform
action
