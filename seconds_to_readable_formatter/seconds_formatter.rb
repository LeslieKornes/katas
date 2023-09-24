# these provide the `pluralize` method
require 'action_view'
include ActionView::Helpers::TextHelper

# FIRST PASS - primitive
# def format_duration(seconds)
#   minute, hour, day, year = 60, 3600, 86400, 31536000
#   str = []

#   if seconds == 0 
#     return "now"
#   end

#   if seconds / year > 0
#     years_in_seconds = seconds / year
#     seconds -= (year * years_in_seconds)
#     str << "#{pluralize(years_in_seconds, 'year')}"
#   end

#   if seconds / day > 0
#     days_in_seconds = seconds / day
#     seconds -= (day * days_in_seconds)
#     str << "#{pluralize(days_in_seconds, 'day')}"
#   end

#   if seconds / hour > 0
#     hours_in_seconds = seconds / hour
#     seconds -= (hour * hours_in_seconds)
#     str << "#{pluralize(hours_in_seconds, 'hour')}"
#   end

#   if seconds / minute > 0
#     minutes_in_seconds = seconds / minute
#     seconds -= (minute * minutes_in_seconds)
#     str << "#{pluralize(minutes_in_seconds, 'minute')}"
#   end

#   if seconds > 0
#     if str.empty?
#       str << "#{pluralize(seconds, 'second')}"
#     else
#       str << "#{pluralize(seconds, 'second')}"
#     end
#   end

#   if str.count >= 3
#     (str.count - 2).times.each_with_index do | o, i |
#       str[i] << ","
#     end
#   end

#   if str.count >= 2
#     str.insert(-2, "and")
#   end

#   str.join(" ").strip
# end

# better version
def format_duration(seconds)
  time_hash = { year: 31536000,
                 day: 86400, 
                 hour: 3600, 
                 minute: 60
                }

  str = []
  if seconds == 0 
    return "now"
  end

  time_hash.map do | key, val |
    if seconds / val > 0
      key_in_seconds = seconds / val
      seconds -= (val * key_in_seconds)
      str << "#{pluralize(key_in_seconds, "#{key}")}"
    end
  end

  if seconds > 0
    str << "#{pluralize(seconds, 'second')}"
  end

  if str.count >= 3
    (str.count - 2).times.each_with_index do | o, i |
      str[i] << ","
    end
  end

  if str.count >= 2
    str.insert(-2, "and")
  end

  str.join(" ").strip
end

puts format_duration(3662)
puts format_duration(0)
puts format_duration(94608000)