# CTFDock
I use a mac as my daily driver. Most of the time this is great, but when I want to work on CTFs or other linux-specific applications,
I need a linux machine with a whole bunch of specific tools.

### Why Docker?
Most of the people that I know do CTFs run linux as their main OS, or at least dual boot. Many are running arch.
For whatever reason, I don't roll this way. Partially because I think mac is more reliable and has greater support of consumer applicaitons,
and partly because I am not willing to put in the time to build my own arch install and tinker/maintain it.
Beyond that, I also like that a Docker container can offer me immutability, and high portability.

1)The immutability is particularly nice, because I very often find myself with things that are broken, or conflicting
because I a few months of daily use have introduced a substantial amount of chaos. I want to try and eliminate this
goose chase from my CTF time.

2)If I ever want to run challenges on my Ubuntu server, or some other random machine, all I have to do is boot the container.


### Why not a VM?
Virtual Machines are a great way to share entire system configurations. In fact, a VM would offer me both of the things I mentioned
above. However, I do have a reasons for not wanting to use a VM. I feel that Docker images are much cleaner. They only have EXACTLY
what you want and need the image to have. Furthermore, if your client is a linux machine, there is MUCH less overhead than with a VM.


### What we want to be included:
* Linux
* gdb
* PEDA
* R2
* Python
* pwntools
* angr
* ropfinder
