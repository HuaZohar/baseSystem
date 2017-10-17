开发环境
  jdk1.7+tomcat7+mysql
开发工具  eclipse+Maven

使用说明
  1.把purview-module_T01.zip直接解压到eclipse的工作空间
  2.使用eclipse File-->Import功能选择 Existing Maven Projects 导入该项目
  3.手工在mysql创建vrv库。
  4.在该项目purview-module\sql目录下找到vrv.sql 手工执行该脚本。
  5.修改purview-module\src\main\conf\dev\config目录下application.properties，数据库配置参数
  6.找到该项目pom.xml文件反键点击--->选择Run As-->Maven build--->Goals输入tomcat7:run 点击run按钮。
  7.项目启动完毕后，在浏览器 输入 http://loaclhost:8080
   
   用户名：admin  密码:admin
   用户名：zhansan  密码:123456

该项目主要实现了
   1.资源管理（菜单、按钮关系构建，通过一个简单树来实现）;2.角色管理（角色和资源的授权）;  3.用户管理（用户和部门的关系）;4.部门管理;5.登录日志

使用了Apache Shiro一个安全框架，通过shiro:hasPermission 标签 来过滤页面按钮是否显示
  
