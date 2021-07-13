
# [Exercise 2 The Unix Workbench](https://ehdinayan.github.io/Cloud-exercise2/)

## Isodeb.sh

## Description:

Hellow, the entire program is based in this [url](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/) and its links.
 
I would like to write a script wich can check and download current **Debian stable iso CD amd64 netinstall** version by itself 
when a new release is effectively available.**Update:** *Well it is possible to modificate it to get whatever Debian iso you want, just adding options*

**Update:** *Really important thing is to achieve MD5SUMS file and it first line content to get this program working.* 

In order to do so I am using curl and wrote a makefile wich extracts the md5sum of specific version from official file through egrep,
in order to compare it with existing CD iso file if any.

**Update:** *There is no need of makefile once using other disposable features, so I removed it.*

When md5sums are not matching, or there is no objective file in working dir, this should be the trigger to download recent release from Debian website.

## Issues

Well I am experiencing kind of *fish that eats its own tail* problems, because:

- I am not sure links will remain the same url within different version releases. 

**Update:** *I have solved it with the `head -1 MD5SUMS | awk '{print $2}'` command, wich allows me retrieve the naked filename 
directly from the official Debian file.*

- The program should know the version number of incomming release to work properly I guess.

**Update:** *Again, this is solved by the way with command above too.*

Despite the above, there is the challenge this should be an automated task. But first I would like to know
if there are any best options to solve initial issues.

**Update:** *Well I think I have achieved that quite well for the moment, so next step is working on automating the task.*
 
**Update** *I have developed script in beautiful manner but not able to test it through cron yet for unknown reasons in Ubuntu 20.04.LTS. 
It will be interesting to discover why is that so. No problem in Debian 10 i386 and amd64*

Thanks for the help, I am also practicing how to develop a program through GitHub. 



