package main

import (
	"log"
	"os"
	"os/exec"
	"syscall"
)

func main(){
	// 指定被fork出来的新进程内的初始命令
	cmd := exec.Command("sh")
	// 设置系统调用参数 使用CLONE_NEWUTS标识创建UTS Namespace
	cmd.SysProcAttr = &syscall.SysProcAttr{Cloneflags: syscall.CLONE_NEWUTS}
	cmd.Stdin = os.Stdin
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	if err := cmd.Run();err != nil {
		log.Fatal(err)
	}
}
