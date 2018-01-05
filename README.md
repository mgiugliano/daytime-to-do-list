# daytime-to-do-list

Widget for [Übersicht](http://tracesof.net/uebersicht/) to display tasks (from macOS Reminders) during working hours only, on your macOS desktop.

![daytime-to-do-list in action](screenshot_large.png)

## Installation
- Install [Übersicht](http://tracesof.net/uebersicht/) (if not already done)
- Download the [latest release](https://github.com/mgiugliano/daytime-to-do-list/releases)
- Unzip the downloaded file
- Move the extracted folder 'daytime-to-do-list' in your Übersicht widgets folder

## Info
Uses command line tool (i.e. AppleScript and bash shell script based) to get the
data out of the Reminders.app, from a specific list indicated by the user (edit
index.coffee).

Largely based on Rich Somerfield's to-do-list widget, daytime-to-do-list allows
me to follow (loosely) the GTD philosophy: every Monday morning I populate an
ad-hoc Reminder list called e.g. GTDthisWeek, by adding new tasks or moving/reviewing
existing tasks from other lists or sources.

As opposed to other Übersicht's widgets out there, after a given time of the day,
the list displayed becomes empty, so that... I can follows my own philosophy of
having a sound sleep without worries at night! Having 24/7 my ToDos in front of
you might become overwhelming.

The widget gets placed centered on the left/middle side of your desktop.
Feel free to adjust it, dissect it, modify it. ;-)

This is my very first attempt at CoffeeScripts and Widget and I do hope my
exploration might be of interest by others.
