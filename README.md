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

## My patched Acme

I'm using a forked version of plan9port, where I've made some changes to the acme source. I might break that out into just an acme clone, but for now it's easier for me to do fresh installs directly from the fork...

My fork: https://github.com/prodhe/plan9port

The changes: https://github.com/9fans/plan9port/compare/master...prodhe:master

Every now and then I merge from upstream to keep it up to date.
