FROM ubuntu:14.04

RUN apt-get update &&\
	apt-get install -y \
		libseccomp-dev \
		git\
		gdb\
		vim\
		tmux\
		python-pip\
		python-dev\
		libssl-dev \
		libffi-dev \
		build-essential

RUN pip install --upgrade pip &&\
	pip install --upgrade pwntools

RUN git clone https://github.com/longld/peda.git ~/peda; \
	echo "source ~/peda/peda.py" >> ~/.gdbinit

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
