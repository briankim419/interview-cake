require 'pry'
def merge_rangess(meetings)
# sort by start time
sorted_meetings = meetings.sort

# initialize merged_meetings with the earliest meeting
merged_meetings = [sorted_meetings[0]]

sorted_meetings[1..-1].each do |current_meeting_start, current_meeting_end|
  last_merged_meeting_start, last_merged_meeting_end = merged_meetings[-1]

  # if the current meeting overlaps with the last merged meeting, use the
  # later end time of the two
  if current_meeting_start <= last_merged_meeting_end
    merged_meetings[-1] = [
      last_merged_meeting_start,
      [last_merged_meeting_end, current_meeting_end].max
    ]
  # add the current meeting since it doesn't overlap
  else
    merged_meetings << [current_meeting_start, current_meeting_end]
  end
end

merged_meetings
end

def merge_ranges(meetings)
  meetings = meetings.sort

  merged_meetings = [meetings[0]]

  meetings[1..-1].each do |start, finish|
    last_start, last_end = merged_meetings[-1]

    if start <= last_end
      merged_meetings[-1] = [last_start, [last_end, finish].max]
    else
      merged_meetings << [start, finish]
    end
  end
  merged_meetings

end

meetings = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
puts merge_ranges(meetings)
