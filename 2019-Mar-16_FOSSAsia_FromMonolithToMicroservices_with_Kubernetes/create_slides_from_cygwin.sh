#!/bin/bash

cd /c/tools/cygwin/home/windo/src/github.com/GIT_mjbright/Talks/2019-Mar-16_FOSSAsia_FromMonolithToMicroservices_with_Kubernetes/

/c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh

ls -al *.pdf

exit 0


    7  cat Paths/ADD_TO_MARKDOWN.html  >> README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
    8  #vi README-
    9  ll Paths/images/
   10  #vi Paths/images
   11  vi Paths/rebuild.sh 
   12  ./Paths/rebuild.sh 
   13  ll images/
   14  git status
   15  git add Paths/xls2html.py Paths/rebuild.sh
   16  git commit -m "Add tools for creating Learning Path html"
   17  git push
   18  git status
   19  vi .gitignore 
   20  git status
   21  git add .gitignore 
   22  git commit -m "Ignore Paths/ generated files"
   23  git status
   24  git add images/*
   25  git add Paths/ServerlessLabs.xls 
   26  vi README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
   27  git status
   28  git add Paths/ServerlessLabs.xls 
   29  git commit -m "Added source Excel file for paths"
   30  git add images/
   31  git status
   32  git commit -m "Delete old image files"
   33  git status
   34  git add README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
   35  git commit -m "... and finally add tables to markdown"
   36  git push
   37  find ~/src/github.com/GIT_mjbright/Talks -iname '*serverlessevents.png'
   38  cp -a /home/mjb/src/github.com/GIT_mjbright/Talks/2019-Jan-26-DevConf.cz-Serverless/static/myimages/ServerlessEvents.PNG images/
   39  git add images/ServerlessEvents.PNG 
   40  git commit -m "Added back image"
   41  git push
   42  cd ~/z/DEMOS/2019-DevConf.cz-SETUP/Excel-2-HTML/
   43  #./xls2html.py 
   44  ll /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/xls2html.py 
   45  diff /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/xls2html.py  .
   46  cp -a /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/xls2html.py  .
   47  ./xls2html.py ServerlessLabs.xls 
   48  ./xls2html.py ServerlessLabs.xls 
   49  vi xls2html.py 
   50  ./xls2html.py ServerlessLabs.xls 
   51  vi xls2html.py 
   52  ./xls2html.py ServerlessLabs.xls 
   53  #./xls2html.py ServerlessLabs.xls 
   54  #cp -a /home/mjb/z/DEMOS/2019-DevConf.cz-SETUP/Excel-2-HTML/ServerlessLabs.xls Paths/
   55  cp -a xls2html.py /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/
   56  ./xls2html.py ServerlessLabs.xls 
   57  ./xls2html.py ServerlessLabs.xls 
   58  ./xls2html.py ServerlessLabs.xls 
   59  vi xls2html.py 
   60  ./xls2html.py ServerlessLabs.xls 
   61  vi xls2html.py 
   62  ./xls2html.py ServerlessLabs.xls 
   63  vi xls2html.py 
   64  ./xls2html.py ServerlessLabs.xls 
   65  vi xls2html.py 
   66  ./xls2html.py ServerlessLabs.xls 
   67  cp -a xls2html.py /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/
   68  cp -a ServerlessLabs.xls /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/
   69  vi README.md
   70  ll /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/rebuild.sh 
   71  cat /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/rebuild.sh 
   72  vi README.md
   73  cp -a xls2html.py README.md ServerlessLabs.xls /home/mjb/src/github.com/GIT_ServerlessLabs/ServerlessWorkshop/BRANCHES/2019-Jan-DevConf.cz/Paths/
   74  cd -
   75  ./Paths/rebuild.sh 
   76  vi README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
   77  ll -tr Paths/
   78  #cat Paths/ADD_TO_MARKDOWN.html README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
   79  vi Paths/rebuild.sh 
   80  ./Paths/rebuild.sh 
   81  vi Paths/rebuild.sh 
   82  ll -tr
   83  tail README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
   84  ./Paths/rebuild.sh 
   85  tail README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
   86  vi README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
   87  git status
   88  git status | less
   89  git add Paths/rebuild.sh 
   90  git commit -m "Add prompts"
   91  git add Paths/README.md 
   92  git commit -m "Add README"
   93  git add Paths/xls2html.py 
   94  git commit -m "Corrected header col widths"
   95  git status | less
   96  #git add images/
   97  rm images/*
   98  ./Paths/rebuild.sh 
   99  git status
  100  git status | less
  101  /Event
  102  cp -a /home/mjb/src/github.com/GIT_mjbright/Talks/2019-Jan-26-DevConf.cz-Serverless/static/myimages/ServerlessEvents.PNG images/
  103  git status | less
  104  git add images/
  105  git status | less
  106  #git add Paths/
  107  git status | less
  108  git add Paths/ServerlessLabs.xls README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md images/
  109  git commit -m "Updated .xlsx, regenerated README-..."
  110  git push
  111  ll images/Using+Serverless+BRpa-sls-_*
  112  diff images/Using+Serverless+BRpa-sls-_*
  113  git status
  114  vi README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
  115  git add README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
  116  git commit -m "Added 'Not implemented' note"
  117  #git push
  118  git push
  119  cd -
  120  ll
  121  rm *.html
  122  ll
  123  p -
  124  #rm *.html
  125  ./xls2html.py ServerlessLabs.xls 
  126  #git add README-2019-Jan-26_DevConf.cz_Hands-on-with-Serverless.md 
  127  #mkdir Paths
  128  mkdir VERSIONS/v11/
  129  rmdir VERSIONS/v11/
  130  mkdir VERSIONS/v11.GoodLayout.SVG.UsedForGithub
  131  #mv *.html VERSIONS/v11.GoodLayout.SVG.UsedForGithub
  132  mkdir VERSIONS/v11.GoodLayout.SVG.UsedForGithub/html
  133  mv *.html VERSIONS/v11.GoodLayout.SVG.UsedForGithub/html/
  134  cp -a ServerlessLabs.xls xls2html.py VERSIONS/v11.GoodLayout.SVG.UsedForGithub/
  135  #mkdir VERSIONS/
  136  ll
  137  exit
  138  ssh -Nv t
  139  vi ~/.ssh/NUC2_vms/config 
  140  ~/z/bin/Deployed/ssh_config.sh 
  141  ssh -Nv t1
  142  ssh -Nv t2
  143  #ssh -Nv t2
  144  vi ~/.ssh/NUC2_vms/config 
  145  ~/z/bin/Deployed/ssh_config.sh 
  146  ssh -Nv home_NUC2_vm1_u
  147  ssh -Nv NUC2_vm1_u
  148  vi ~/.ssh/NUC2_vms/config 
  149  #vi ~/.ssh/NUC2_vms/config 
  150  ~/z/bin/Deployed/ssh_config.sh 
  151  ssh -Nv home_NUC2_vm1_u
  152  #vi ~/.ssh/NUC2_vms/config 
  153  vi ~/.ssh/NUC2_vms/config 
  154  ssh -Nv NUC2_vm1_u
  155  aws s3 ls
  156  #aws s3 ls
  157  . ~/.aws/credentials.rc.mjbrightC_root 
  158  aws s3 ls
  159  date
  160  date
  161  date
  162  date
  163  date
  164  aws s3 ls
  165  date
  166  date
  167  while true; do sleep 1; date; done
  168  cd ~/z/DEMOS/2019-DevConf.cz-SETUP/
  169  cd ansible/
  170  ll
  171  cp -a ~/z/bin/vagrant/SETTING_VIRTUALBOX_TIME.txt  .
  172  ll
  173  mv SETTING_VIRTUALBOX_TIME.txt ../
  174  grep -ir sudo .
  175  grep -ir sudoer .
  176  vi playbooks/create_user1.yml
  177  mgrep manning
  178  common
  179  mgrep manning
  180  ~/z/www/python_web_serve.sh 
  181  ll ~/WIN/Downloads/CKA*
  182  rm ~/WIN/Downloads/CKA_Curriculum_V1.12.0\ \(1\).pdf 
  183  mv ~/WIN/Downloads/CKA* ~/WIN/Documents/2019/ContainerOrchestration_Kubernetes/
  184  ll ~/WIN/Documents/2019/ContainerOrchestration_Kubernetes/*CKA*
  185  open ~/WIN/Documents/2019/ContainerOrchestration_Kubernetes/*CKA*
  186  open ~/WIN/Documents/2019/ContainerOrchestration_Kubernetes/CKA_Curriculum_V1.12.0.pdf 
  187  wget https://media.transistor.fm/8b73d055.mp3?download=true
  188  ll 8b73d055.mp3\?download\=true 
  189  mv 8b73d055.mp3\?download\=true 
  190  ll 8b73d055.mp3\?download\=true 
  191  mv 8b73d055.mp3\?download\=true BrettFisher_Podcast_DevOpsAndDocker_Ep9_Windows10Containers_get_ProcessIsolation_8b73d055.mp3
  192  df -h .
  193  mv BrettFisher_Podcast_DevOpsAndDocker_Ep9_Windows10Containers_get_ProcessIsolation_8b73d055.mp3  ~/WIN/Media.New/
  194  ll ../
  195  cd ~/z/DEMOS/2019-DevConf.cz-SETUP/
  196  cd
  197  cd -
  198  ssh NUC2_vm1_u
  199  ssh home_NUC2_vm1_u 
  200  ssh home_NUC2_vm1
  201  vi ~/z/bin/vagrant/SETTING_VIRTUALBOX_TIME.txt
  202  cd ~/z/DEMOS/2019-DevConf.cz-SETUP
  203  cd awscli-create-function/
  204  ll
  205  rsync -av NUC:Media.New/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx6* ~/WIN/Media.Cache/
  206  cd ~/z/DEMOS/2019-DevConf.cz-SETUP
  207  ll
  208  cd awscli-create-function/
  209  tmux
  210  vi /home/mjb/z/bin/Deployed/ssh_NUC2_vm1_u.sh
  211  ssh NUC2_vm1_u
  212  vi /home/mjb/z/bin/Deployed/ssh_NUC2_vm1_u.sh
  213  kubectl krew list
  214  #vi ~/.bash_profile
  215  set -o vi
  216  echo 'export PATH=~/.krew/bin:$PATH' >> ~/.bash_profile
  217  cat ~/.bash_profile
  218  kubectl krew list
  219  krew list
  220  set -o vi
  221  krew list
  222  which kubectl
  223  kubectl krew list
  224  exit
  225  uptime
  226  uptime
  227  kubectl get nodes
  228  ll  -tr ~/WIN/Media.New/
  229  ll  -tr ~/WIN/Media.New/BrettFisher_Podcast_DevOpsAndDocker_Ep9_Windows10Containers_get_ProcessIsolation_8b73d055.mp3 
  230  du -sh ~/WIN/Media.New/talkpython.fm.podcasts
  231  #du -sh ~/WIN/Media.New/BrettFisher_Podcast_DevOpsAndDocker_Ep9_Windows10Containers_get_ProcessIsolation_8b73d055.mp3 
  232  ll -tr ~/WIN/Media.Cache/
  233  ll -tr ~/WIN/Media.Cache/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx64ZmyVfg/
  234  du -sh ~/WIN/Media.Cache/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx64ZmyVfg/
  235  rsync -av NUC:Media.New/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx6*/ /home/mjb/WIN/Media.Cache/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx64ZmyVfg/
  236  ssh NUC uptime
  237  ping -a google.com
  238  ll -tr ~/WIN/Downloads/
  239  mv ~/WIN/Downloads/icrim1.pdf ~/z/data/Money/data/2019-Feb-HP_InternationalPensionGuarantee-icrim1.pdf
  240  mv ~/WIN/Downloads/icrim1.pdf ~/z/data/Money/data/2019-Feb-HP_InternationalPensionGuarantee-icrim1.pdf
  241  ip a
  242  ip a | grep 192
  243  ip a | less
  244  ip a | less
  245  ip a | grep 192
  246  ip a | grep 192
  247  rsync -av NUC:Media.New/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx6*/ /home/mjb/WIN/Media.Cache/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx64ZmyVfg/
  248  rsync -av --progress NUC:Media.New/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx6*/ /home/mjb/WIN/Media.Cache/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx64ZmyVfg/
  249  du -sh ~/WIN/Media.Cache/CHANNEL_BrettFisher_Docker_and_DevOps_UC0NErq0RhP51iXx64ZmyVfg/
  250  rsync -av --progress NUC:Media.New/Podcasts.talkpython.fm /home/mjb/WIN/Media.Cache/
  251  du -sh /home/mjb/WIN/Media.Cache/Podcasts.talkpython.fm/
  252  cd ~/z/mjbright_CONSULTING/Branding/
  253  ll
  254  ll
  255  ll
  256  ll
  257  ll
  258  ll
  259  ll
  260  mv 2018-Aug-25_BusinessCard_v1.[12]* OLD/
  261  ll
  262  ll OLD/
  263  ll
  264  #open 2018-Aug-25_BusinessCard_v1
  265  mv 2018-Aug-25_BusinessCard_v1_RECTO.PNG OLD/
  266  ll
  267  open 2018-Aug-25_BusinessCard_v1.3.pptx 
  268  #common
  269  which open
  270  man open
  271  openvt
  272  common
  273  open 2018-Aug-25_BusinessCard_v1.3.pptx 
  274  ll OLD/
  275  ll OLD/2018-Aug-25_BusinessCard_v1.2.pptx 
  276  open OLD/2018-Aug-25_BusinessCard_v1.2.pptx 
  277  open OLD/2018-Aug-25_BusinessCard_v1.2_VERSO.pptx 
  278  sudo apt-get install wavemon
  279  wavemon
  280  sudo wavemon
  281  ip a
  282  #ip a
  283  ip a | less
  284  sudo wavemon -i wifi0
  285  sudo wavemon -h
  286  vi ~/z/bin/Deployed/watch.sh
  287  sudo apt install argbash
  288  ll ~/WIN/Downloads/argbash-2.8.0.tar.gz 
  289  tar ztf ~/WIN/Downloads/argbash-2.8.0.tar.gz 
  290  tar ztf ~/WIN/Downloads/argbash-2.8.0.tar.gz  | less
  291  tar -C ~/ARGB zxf ~/WIN/Downloads/argbash-2.8.0.tar.gz 
  292  tar -C ~/ARGB -zxf ~/WIN/Downloads/argbash-2.8.0.tar.gz 
  293  mkdir ~/ARGBAHS
  294  rmdir ~/ARGBAHS
  295  mkdir ~/ARGBash
  296  tar -C ~/ARGBsh -zxf ~/WIN/Downloads/argbash-2.8.0.tar.gz 
  297  tar -C ~/ARGBash -zxf ~/WIN/Downloads/argbash-2.8.0.tar.gz 
  298  ll ~/ARGBash/
  299  git_clone.sh https://github.com/matejak/argbash
  300  diff -rq ~/ARGBash/argbash-2.8.0/ ~/src/github.com/matejak.argbash/
  301  df -h
  302  ll ~/ARGBash/bi
  303  ll ~/ARGBash/bin
  304  ll ~/ARGBash/argbash-2.8.0/bin/
  305  cp -a ~/ARGBash/argbash-2.8.0/bin/argbash* ~/z/bin/sh/
  306  rm -rf ~/ARGBash/
  307  df -h .
  308  bp
  309  mvi CCP
  310  m
  311  mvi Oney
  312  bp
  313  wget -O KUBE_RANCHER.pptx 'https://docs.google.com/viewer?url=https%3A%2F%2Finfo.rancher.com%2Fhubfs%2FKubernetes%2520Master%2520Class%2520Series%2FMigrating%2520Applications%2520to%2520Kubernetes%2FRancher%2520Labs%2520-%2520Kubernetes%2520Master%2520Class%2520--%2520Migrating%2520Applications%2520to%2520Kubernetes.pptx%3Futm_campaign%3DKubernetes%2520Master%2520Class%253A%2520Migrating%2520Existing%2520Applications%2520to%2520Kubernetes%26utm_source%3Dhs_email%26utm_medium%3Demail%26_hsenc%3Dp2ANqtz-8MtJiA04aaIfZqErARQAKEkhAgeb0i4jZ-TU2kbWjT928yWbxnc2blifpKBJVkLkYD3L9x'
  314  c KUBE_RANCHER.pptx 
  315  curl  -o KUBE_RANCHER.pptx 'https://docs.google.com/viewer?url=https%3A%2F%2Finfo.rancher.com%2Fhubfs%2FKubernetes%2520Master%2520Class%2520Series%2FMigrating%2520Applications%2520to%2520Kubernetes%2FRancher%2520Labs%2520-%2520Kubernetes%2520Master%2520Class%2520--%2520Migrating%2520Applications%2520to%2520Kubernetes.pptx%3Futm_campaign%3DKubernetes%2520Master%2520Class%253A%2520Migrating%2520Existing%2520Applications%2520to%2520Kubernetes%26utm_source%3Dhs_email%26utm_medium%3Demail%26_hsenc%3Dp2ANqtz-8MtJiA04aaIfZqErARQAKEkhAgeb0i4jZ-TU2kbWjT928yWbxnc2blifpKBJVkLkYD3L9x'
  316  ll KUBE_RANCHER.pptx 
  317  more KUBE_RANCHER.pptx 
  318  a gordon
  319  bp
  320  mvi Oney
  321  m
  322  mvi Oney
  323  m
  324  mvi Oney
  325  echo "260.26 + 170.54 + 381.78 + 49" | bc
  326  echo "26026 + 17054 + 38178 + 4900" | bc
  327  mvi Oney
  328  m
  329  mvi Oney
  330  m
  331  cd -
  332  cd -
  333  cd ~/WIN/Downloads/
  334  ll 9781787125230_Code.zip 
  335  mv 9781787125230_Code.zip  9781787125230-CONTINUOUS_DELIVERY_WITH_DOCKER_AND_JENKINS_Code.zip
  336  ll 9781787125230-CONTINUOUS_DELIVERY_WITH_DOCKER_AND_JENKINS*
  337  ll 9781787125230-CONTINUOUS_DELIVERY_WITH_DOCKER_AND_JENKINS_Code.zip 
  338  unzip -l 9781787125230-CONTINUOUS_DELIVERY_WITH_DOCKER_AND_JENKINS_Code.zip 
  339  unzip -l 9781787125230-CONTINUOUS_DELIVERY_WITH_DOCKER_AND_JENKINS_Code.zip  | less
  340  cd -
  341  ll ~/WIN/Documents/BOOKS/
  342  ll ~/WIN/Documents/BOOKS/ | grep -i jenk
  343  mv ~/WIN/Downloads/9781787125230-CONTINUOUS_DELIVERY_WITH_DOCKER_AND_JENKINS* ~/WIN/Documents/BOOKS/
  344  ll ~/WIN/Documents/BOOKS/ | grep -i jenk
  345  ll -tr ~/WIN/Documents/BOOKS/
  346  tmux ls
  347  cd
  348  tmxu
  349  tmux
  350  ls
  351  pwd
  352  ls
  353  LS
  354  ls
  355  ls
  356  ls
  357  ls
  358  ls
  359  ls
  360  uptime
  361  df -h
  362  uptime
  363  df -h
  364  docker ps
  365  docker ps
  366  docker ps
  367  docker ps -a
  368  docker ps -a
  369  ls
  370  ls
  371  ls
  372  ll
  373  ls
  374  ls
  375  ls
  376  df -h
  377  ls
  378  clear
  379  ll
  380  tmux ls
  381  tmux a
  382  tmux ls
  383  tmux new-session -n DEMO
  384  ssh work
  385  ssh mike1
  386  ssh ldlc
  387  ssh ldlc
  388  a odopo
  389  address odopo
  390  ~/z/bin/Deployed/address odopo
  391  ssh ldlc
  392  ssh ldlc
  393  ssh ldlc
  394  ssh ldlc
  395  exit
  396  tmux ls
  397  uptime
  398  tmux
  399  cd ~/src/github.com/GIT_mjbright/Talks/2019-Mar-16_FOSSAsia_FromMonolithToMicroservices_with_Kubernetes/
  400  ll 
  401  ll /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  402  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  403  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  404  uname -a
  405  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  406  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  407  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  408  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  409  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  410  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  411  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  412  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  413  cd ../
  414  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh 2019-Mar-16_FOSSAsia_FromMonolithToMicroservices_with_Kubernetes/
  415  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh 
  416  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh .
  417  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  418  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh .
  419  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  420  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh .
  421  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  422  cd 2019-Mar-16_FOSSAsia_FromMonolithToMicroservices_with_Kubernetes/
  423  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  424  ll /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  425  ll /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh*
  426  cp -a /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh.3
  427  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  428  #/c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh*
  429  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  430  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  431  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  432  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  433  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  434  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  435  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  436  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  437  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  438  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  439  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  440  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  441  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  442  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  443  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  444  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  445  curl 127.0.0.1:9000
  446  curl -q 127.0.0.1:9000
  447  curl -O - 127.0.0.1:9000
  448  curl -O x 127.0.0.1:9000
  449  ll x
  450  curl -o x 127.0.0.1:9000
  451  ll x
  452  curl -o - 127.0.0.1:9000
  453  curl -o /dev/null 127.0.0.1:9000 && echo OK
  454  curl -o ~/tmp/null 127.0.0.1:9000 && echo OK
  455  curl -q -o ~/tmp/null 127.0.0.1:9000 && echo OK
  456  man curl
  457  curl --help 2>&1 | less
  458  curl --help 2>&1 | grep -i quiet
  459  curl --help 2>&1 | grep -i silent
  460  curl -s -o ~/tmp/null 127.0.0.1:9000 && echo OK
  461  ll ~/tmp/null
  462  curl -o ~/tmp/null 127.0.0.1:9000 && echo OK
  463  ll ~/tmp/
  464  ll ~/tmp/null
  465  touch ~/tmp/null
  466  chmod 777 ~/tmp/null
  467  ll ~/tmp/null
  468  curl -s -o ~/tmp/null 127.0.0.1:9000 && echo OK
  469  curl -o ~/tmp/null 127.0.0.1:9000 && echo OK
  470  ll ~/tmp/null
  471  wget -O /dev/null 127.0.0.1:9000
  472  wget -O /dev/null 127.0.0.1:9000 && echo OK
  473  wget -qO /dev/null 127.0.0.1:9000 && echo OK
  474  wget -qO /dev/null 127.0.0.1:9001 && echo OK
  475  vi /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  476  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  477  /c/Users/windo/Dropbox/z/www/create_slides_with_decktape.sh
  478  ll -tr
  479  date
  480  #ll -tr
  481  open 2019-Mar-16_FOSSAsia_FromMonolithToMicroservices_with_Kubernetes.pdf 
  482  exit
  483  tmux ls
  484  exit
  485  exit
  486  ls
  487  ll
  488  ls
  489  ll
  490  tmux ls
  491  
  492  ll
  493  ls
  494  ll
  495  ll
  496  ll
  497  ll
  498  ls
  499  clear
  502  ll *.pdf
  503  date
  504  open 2019-Mar-16_FOSSAsia_FromMonolithToMicroservices_with_Kubernetes.pdf 
  505  #open 2019-Mar-16_FOSSAsia_FromMonolithToMicroservices_with_Kubernetes.pdf 
  506  history > create_slides_from_cygwin.sh
