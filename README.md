Update Common Library Checksum 
==============================
```
cd /Users/mac/baidu/百度云同步盘/private_data/project/devops_consultant/consultant_code/devops_jenkins
find . -name "*.sh" | xargs sed  -i "" "s/3543853840/1448253646/g"
find . -name "*.sh" | xargs grep "bash /var/lib/devops/refresh_common_library.sh"
```
