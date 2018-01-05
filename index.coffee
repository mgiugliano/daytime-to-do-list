#
# A minimalistic widget to display the Reminders, *restricted* to a given list.
# The widget hides the content of the list after a specified time of the day.
# (i.e. work and be stressed but rest at night!)
#
# Authored by Michele Giugliano, on Jan 5th 2018
#
# It uses AppleScript and for the rest it is almost entirely based on
# the to-do widget by Rich Somerfield (thank you)

RemindersList  = 'Test' # This is the only list whose Reminders will be listed
MaxDaytimeHour = '25'   # Hour of day (24h format) at and after which... rest!
# Set the above variable to 25 if ...you never sleep!

todolistfile  = 'daytime-to-do-list/todolist.txt'
# This is an ASCII file as in Rich Somerfield's awk-fu:
# contains a series of entries, each on a new line and preceeded by
# a '-' for an open item
# or a '+' for a completed item

cmd1           = 'daytime-to-do-list/pReminders_todo'
cmd2           = 'daytime-to-do-list/pReminders_done'
# Short cut ot invoke my AppleScript that extracts Reminders from a List

command:"H=$(date +%H) && if (( 10#$H < #{MaxDaytimeHour})); then >#{todolistfile} && #{cmd1} #{RemindersList} >>#{todolistfile} && #{cmd2} #{RemindersList} >>#{todolistfile}; else >#{todolistfile}; fi && cat #{todolistfile} | awk 'BEGIN {print \"<ol>\"} /^[-]/ {print \"<li>\"substr($0,2)\"</li>\"} /^[+]/ {print \"<li class=\\\"completed\\\">\"substr($0,2)\"</li>\"} END {print \"</ol>\"}'"

refreshFrequency: '60s'

style: """
  top: 150px
  left: 50px
  color: #fff
  font-family: Helvetica Neue

  h
    display: block
    text-align: left
    font-size: 44px
    font-weight: 250

  div
    display: block
    text-align: left
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: 25px
    font-weight: 250

  ol
    padding-left: 20px

  .completed
    color: #888
    font-weight: regular
    text-decoration:line-through
"""


render: -> """
  <h>#{RemindersList}</h>
  <div class='todolist'></div>
"""

update: (output, domEl) ->
  $(domEl).find('.todolist').html(output)
