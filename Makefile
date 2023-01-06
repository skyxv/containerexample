run:
	docker build -t containerexample:v1 .
	docker run -it --privileged -v /Users/denghong.yan/GoProjects/containerexample:/go --name containerexample_demo containerexample:v1 /bin/bash

uts:
	go run utsnamespace.go
	#echo $$
	#pstree -pl
	#readlink /proc/94/ns/uts
	#hostname -b

ipc:
	go run ipcnamespace.go
	# ipcs -q
	# ipcmk -Q
	# ipcs -q

pid:
	go run pidnamespace.go
	# pstree -pl

mount:
	go run mountnamespace.go
	# ls /proc

user:
	go run usernamespace.go
	# id

net:
	go run networknamespace.go
	# ifconfig

limit:
	go run resourcelimit.go
