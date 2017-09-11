FROM ubuntu:16.04

RUN dpkg --add-architecture i386

RUN apt-get update &&\
	apt-get install -y \
		libseccomp-dev \
		curl \
		git \
		gdb \
		vim \
		tmux \
		python-pip\
		python-dev\
		libssl-dev \
		libffi-dev \
		build-essential \
		libc6:i386 \
		libncurses5:i386 \
		libstdc++6:i386

RUN pip install --upgrade pip &&\
	pip install --upgrade pwntools

RUN git clone https://github.com/longld/peda.git ~/peda; \
	echo "source ~/peda/peda.py" >> ~/.gdbinit

RUN git clone https://github.com/radare/radare2.git ~/r2; \
	~/r2/sys/install.sh

#Pull the config files
RUN curl -o /root/.tmux.conf https://raw.githubusercontent.com/burtonwilliamt/dotfiles/master/.tmux.conf


#RUN apt-get update &&\
	#apt-get install -y \
	#python-pip

#RUN apt-get update &&\
	#apt-get install -y \
		#python2.7 \
		#python-pip \
		#python-dev \
		#git \
		#libssl-dev \
		#libffi-dev \
		#build-essential

#RUN pip install --upgrade pip &&\
	#pip install --upgrade pwntools
