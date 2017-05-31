# acme-setup

A collection of scripts and commands and notes-to-self on my Acme text editor setup.

Add ./bin/ to $PATH (eg. via ~/.profile):

	export PATH=<this repo>/bin/:$PATH

To see the viable system fonts (if one does not love the Bigelow & Holme's):

	% fontsrv -p .

Symlink ./plumbing to ~/lib/plumbing:

	% mkdir -p ~/lib && ln -s ./plumbing ~/lib/plumbing

Watch Russ Cox's excellent A Tour of Acme (https://research.swtch.com/acme) to get a glimpse at what Acme can do.

Answer (in the words of Rob Pike): "Uhm... everything."


## Requirements

Acme, obviously. Get it from the 9fans as part of plan9port at https://github.com/9fans along with some good go tools (editinacme in particular).