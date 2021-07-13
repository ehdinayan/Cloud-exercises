## Doing this exercise experience has showed me:

- Encounter trouble while writting code is the best way to figure out different
  ways to do things and learn about new commands and programs.

- Examples of the above are the use of curl and crontab task programming, 
  wich I am still encountering trouble with in Ubuntu. 
  Working fine in Debian 10 amd64 and Debian 10 i386 in a 20 years old computer.

- Improvements that come to mind: This program should be automatic by writing 
  an entry by itself in user crontab: /tmp/crontab.OzVSNv/crontab, but this 
  is an Ubuntu path so program should be also able to find this tab and 
  programming is own task based on user prefernces about:

1. **What Iso file and when**
	   *Program should have a database according to a few distros and
	    its checksums* 
	
2. **Program folder**
	   *It should be able (if user allows it) to find and move or 
	   at least copy all iso files in system to a program folder in 
	   order to check their hashes and re-download damaged if any.
	   After that find and download user's selection in a "first run
	   configuration" for example.*
	   
3. **Major difficulties** 
	   *for me to do something like that should be the creation of a 
	   list of urls based in existing iso files in local machine plus 
	   those demanded by user, in order to curl download anything needed. 
	   Probably other concerns that I am not aware
	   at the moment will get in the way, but I think all that should
	   be very similar to daily-update process, wich is surely also
	   automated with scheduled tasks in System crontab.*
  
