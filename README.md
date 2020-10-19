# IIP-HCI实验室网站
# Spring+SpringMVC+MyBatis 项目
# 项目简介
## 该项目对实验室既有PHP展示网站的重写。原有的PHP网站展示页面老旧，系统没有采用框架编容易受到SQl注入等恶意攻击。模仿类似的实验室网站样式，编写了美观的前端页面，利用SSM框架将项目整合。网站功能包括前端展示页面和后台管理系统两部分。前端脑电EEG数据下载采用分页展示(使用SQL中的limit关键字实现)，对于未登录的用户请求下载EEG数据访问拒绝(使用Spring框架中的Interceptor对url进行拦截)。后台管理系统中有新闻管理(Ueditor富文本编辑器的使用)，脑电EEG数据管理(文件的上传和下载)，网站用户管理和脑电实验受试者信息管理(CRUD)。
# 代码环境
## JDK8.0+ MySQL8.0+SSM+tomcat-9.0.30+ IntelliJ IDEA +Maven

# 项目演示

## 前端展示页面
![1](https://img-blog.csdnimg.cn/20201019200925484.png)
![2](https://img-blog.csdnimg.cn/20201019200759462.png)

## 后台管理系统展示
![3](https://img-blog.csdnimg.cn/20201019200758132.png)
![4](https://img-blog.csdnimg.cn/20201019200758175.png)





