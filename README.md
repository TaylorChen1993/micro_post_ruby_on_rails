---------------------------------------------------拷贝项目------------------------------------------------------------------
1.To get started with the app,clone the repo and then install the needed gems:
$bundle install --without production

2.Next,migrate the database:
$rails db:migrate

3.Finally,run the test suite to verify that everything is working correctly:
$rails test

4.If the test suite passes,you'll be ready to run the app in a local server:
$rails server



----------------------------------------------------文件目录--------------------------------------------------------------
README.md 应用简介
Gemfile 应用所需的 gem
config/route.rb 路由
app/ 应用的核心文件，包含模型、视图、控制器和辅助方法
app/assets 应用的资源文件，例如层叠样式表（ CSS）、 JavaScript 和图像
test/ 应用的测试
db/ 数据库相关的文件

bin/ 可执行二进制文件
config/ 应用的配置
doc/ 应用的文档
lib/ 代码库模块文件
lib/assets 代码库的资源文件，例如 CSS、 JavaScript 和图像
log/ 应用的日志文件
public/ 公共（例如浏览器）可访问的文件，例如错误页面
bin/rails 生成代码、打开终端会话或启动本地服务器的程序
tmp/ 临时文件
vendor/ 第三方代码，例如插件和 gem
vendor/assets 第三方资源文件，例如 CSS、 JavaScript 和图像
Rakefile 使用 rake 命令执行的实用任务
Gemfile.lock gem 列表，确保这个应用的副本使用相同版本的 gem
config.ru Rack 中间件的配置文件
.gitignore Git 忽略的文件
--------------------------------------------------------开发-------------------------------------------------------------------
touch app/views/static_pages/contact.html.erb#修改文件时间戳，若不存在这个文件，则新建
先写测试再开发(红->绿->重构)


rails console
rails routes#列举所有controller,method
ApplicationController.subclasses#列举所有controller

------------------------------------------------------git commit--------------------------------------------------------------------------
bundle exec guard#使用Guard自动测试:在每次workspace有更改时都会自动运行所有测试(单元测试，数据模型测试，集成测试等)，反应有些滞后，请稍等,书上注释回车可执行所有test
git add -A#先检查Guard测试是否通过，或运行rails test
git commit#第一行输入commit标签
git checkout master
git merge anotherbranch
git push #已默认push到github中
git push heroku


------------------------------------------------------git branch--------------------------------------------------------------------------
static_pages    #ruby on rails tutorial教程中文版第三章
bootstrap       #第五章








---------------------------------------------------------Cloud 9----------------------------------------------------------------------------

     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 


Welcome to your Rails project on Cloud9 IDE!

To get started, just do the following:

1. Run the project with the "Run Project" button in the menu bar on top of the IDE.
2. Preview your new app by clicking on the URL that appears in the Run panel below (https://micro-post-ctl123.c9users.io/).

Happy coding!
The Cloud9 IDE team


## Support & Documentation

Visit http://docs.c9.io for support, or to learn more about using Cloud9 IDE. 
To watch some training videos, visit http://www.youtube.com/user/c9ide
