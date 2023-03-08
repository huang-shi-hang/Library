# Library
大学图书管理系统
##使用步骤
1.使用pycharm打开library文件
2.在数据库中导入mysql.sql文件
3.在library/library/setting.py文件中将DATABASE字段中的PASSWORD改为自己数据库的密码,同时将NAME改为schame的名字
4.在命令框输入python manage.py runserver即可成功运行。
5.在浏览器输入http://127.0.0.1:8000/login/进入登录界面，输入http://127.0.0.1:8000/admin/进入后台，也就是超级管理员界面，具体可以查看视频
