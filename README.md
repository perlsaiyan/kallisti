# Legends of Kallisti Utilities

Okay, this is the library I've built up in the time since I started playing
LoK.  You probably won't have much luck just checking it out and trying to run
it, as I depend on a number of outside Linux utilities, and in general it's
built for my screen setup.

I run in a tmux session with true color support, and make several assumptions
about that in various places.  The idea is that tt++ is launched from the main
directory with "tt++ main.tin".  I use a linux utility to encrypt my password,
so autologin can work without me checking in my credentials.

At a minimum you'll need to set the ttd var in main.tin, which should point to
the top level directory of your tt++ files.  It should build the sub-paths off
of that starting point.

I'll try to add some screenshots at some point here, to show what the layout
looks like.  It uses a right sidebar with a visual map, group info, action
queue information, and xp per minute counters.  At the top is a 10 line comms
bar, and the bottom includes a 4 line information box with stats and some
progress bars.

Good luck, hit me up on LoK if you need some help.  I can't teach you tt++, but
I can probably help you get some of this adapted for your use case.


