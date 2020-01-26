module ApplicationHelper
  def render_time(time)
    time = Time.parse(time) if time.kind_of? String
    time.strftime('%-d %b %Y at %-I:%M.%S %p')
  end
end
