Update Common Library Checksum 
==============================
```
cd /Users/mac/baidu/百度云同步盘/private_data/project/devops_consultant/consultant_code/devops_jenkins
find . -name "*.sh" | xargs sed  -i "" "s/1523631277/3278792373/g"
find . -name "*.sh" | xargs grep "bash /var/lib/devops/refresh_common_library.sh"
```
Install Jenkins jobs
=====================
1. Switch to jenkins OS user, then  copy $JOB_NAME/config.xml to /var/lib/jenkins/jobs/$JOB_NAME/config.xml

2. Restart Jenkins, or reload Jenkins configuration from GUI
