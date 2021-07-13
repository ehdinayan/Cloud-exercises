# Cloud computing exercise 1

## Write a bash script that takes a file path as an argument and copies that file to a designed folder on your server.

It has been funny to do this exercise and practice with server communication
programs and commands. In my case while I was writing the script and testing it
necessity of recognize valid path as an argument to execute the task revealed so important.

That made me add a feature to the script wich is you can send an entire folder or a single file
to server through scp.

**Basically most important commands are file or folder transfer:**

`scp -r [argument] [username]@[ip adress]:[/server/path]` for folders.

`scp [argument] [username]@[ip adress]:[/server/path]` for files. 

## Possible improvements

Program may could check if file transferences went ok redirecting user to 
server login, but is clear in standard ouput how it is done.

I soupose it is enough for this exercise to be done! 
