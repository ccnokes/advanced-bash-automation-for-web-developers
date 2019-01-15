# Schedule timed jobs on macOS with launchd

To install the launchd job:
```bash
mv local.empty-trash.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/local.empty-trash.plist
```

To verify it's active
```bash
launchctl list | grep 'local'
```

To run it immediately
```bash
launchctl kickstart gui/$UID/local.empty-trash
```

To unload the job
```bash
launchctl unload ~/Library/LaunchAgents/local.empty-trash.plist
```
Now if you grep for the job (`launchctl list | grep 'local'`), it won't be in that list.

## Additional notes

Launchd is actually a really huge topic and I only went over one of the most basic use cases of it. Here's some other things that I couldn't fit into the video.

### Why not `cron`?
Launchd is really robust and has a lot more features than cron does (at least that's the case on macOS, the GNU/Linux crontab is different and more robust than the BSD cron  AFAIK). For example, some other possiblities:

- StartInterval: Run job every N seconds
- StartOnMount: Run when a device has been mounted (for example a backup harddrive)
- WatchPaths: Run when creating, removing files in this directory
- RunAtLoad: Run at startup and login
- StandardOutPath and StandardErrorPath: specify where your stdio goes (otherwise it goes to the syslog I think)

See "Learn more" below for more.

Apple also recommends using launchd over cron. For small use cases like this one, I think cron is fine though, I suspect that recommendation is targeted for macOS app devs.

### Why use AppleScript to empty the Trash and not `rm -rf ~/.Trash`?
There's a few edge cases with emptying the trash that `rm` doesn't handle. One of them was that if you have files from a different device in the trash then `rm` can run into permission issues deleting those.

### Will my scheduled job run if my computer is off or asleep?
From Apple's documentation: "If you schedule a launchd job by setting the StartCalendarInterval key and the computer is asleep when the job should have run, your job will run when the computer wakes up. However, if the machine is off when the job should have run, the job does not execute until the next designated time occurs."

### Learn more
http://www.launchd.info/
https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/ScheduledJobs.html
https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html
