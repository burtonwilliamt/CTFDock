FROM ubuntu:16.04

RUN dpkg --add-architecture i386

RUN apt-get update &&\
	apt-get upgrade -y &&\
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
		libstdc++6:i386 \
		sl

RUN pip install --upgrade pip &&\
	pip install --upgrade pwntools &&\
	pip install \
		ipython

RUN git clone https://github.com/longld/peda.git ~/peda; \
	echo "source ~/peda/peda.py" >> ~/.gdbinit

RUN git clone https://github.com/radare/radare2.git ~/r2; \
	~/r2/sys/install.sh

#Instal angr
#Fix capstone
RUN mv /usr/local/lib/python2.7/dist-packages/usr/lib/python2.7/dist-packages/capstone/libcapstone.so /usr/local/lib/python2.7/dist-packages/capstone/
RUN pip install angr

#Pull the config files
RUN curl -o /root/.tmux.conf https://raw.githubusercontent.com/burtonwilliamt/dotfiles/master/.tmux.conf
RUN curl -o /root/.vimrc https://raw.githubusercontent.com/burtonwilliamt/dotfiles/master/.vimrc

RUN apt-get update && \
	apt-get install -y \
		man

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
