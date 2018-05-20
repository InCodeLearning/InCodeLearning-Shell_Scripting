## dpkg - debian package manager

```
# -l and -L are options for dpkg-query but works directly with dpkg
# list all packages
dpkg -l | less # --list
# list packages with pattern, should be better than grep way
dpkg -l *jdk
dpkg -l | grep jdk
# list files installed to your system
dpkg -L openjfx-source
# find which package a file belongs
dpkg -S /usr/lib/jvm/java-8-openjdk-amd64/javafx-src.zip
```


## du - disk usage

```
du
```
