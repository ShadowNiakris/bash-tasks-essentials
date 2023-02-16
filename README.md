# DevOps BootCamp: Bash SED/AWK

>Please use branch ```task_sedawk``` for this task that already exist in your forked repository after you has been started task

## Task


With given passwd file do following:

  a. Create copy of `passwd` file to `passwd_new`. :exclamation: Do all modifications on `passwd_new` file
  
  b. Change shell for user `saned` from `/usr/sbin/nologin` to `/bin/bash` using **AWK**

  c. Change shell for user `avahi` from `/usr/sbin/nologin` to `/bin/bash` using **SED**

  d. Save only 1-st 3-th 5-th 7-th columns of each string based on `:` delimiter 

  e. Remove all lines from file containing word `daemon`

  f. Change shell for all users with **even** `UID` to `/bin/zsh`

>`passwd_new` shouldn't has new line at the end of file