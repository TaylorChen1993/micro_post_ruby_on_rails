拷贝项目
1.To get started with the app,clone the repo and then install the needed gems:
$bundle install --without production

2.Next,migrate the database:
$rails db:migrate

3.Finally,run the test suite to verify that everything is working correctly:
$rails test

4.If the test suite passes,you'll be ready to run the app in a local server:
$rails server



开发
app/ 应用的核心文件，包含模型、视图、控制器和辅助方法
app/assets 应用的资源文件，例如层叠样式表（ CSS）、 JavaScript 和图像
bin/ 可执行二进制文件
config/ 应用的配置
db/ 数据库相关的文件
doc/ 应用的文档
lib/ 代码库模块文件
lib/assets 代码库的资源文件，例如 CSS、 JavaScript 和图像
log/ 应用的日志文件
public/ 公共（例如浏览器）可访问的文件，例如错误页面
bin/rails 生成代码、打开终端会话或启动本地服务器的程序
test/ 应用的测试
tmp/ 临时文件
vendor/ 第三方代码，例如插件和 gem
vendor/assets 第三方资源文件，例如 CSS、 JavaScript 和图像
README.md 应用简介
Rakefile 使用 rake 命令执行的实用任务
Gemfile 应用所需的 gem
Gemfile.lock gem 列表，确保这个应用的副本使用相同版本的 gem
config.ru Rack 中间件的配置文件
.gitignore Git 忽略的文件



git push -u github
git push -u heroku

bundle exec guard#使用Guard自动测试，回车可自动运行所有测试

app/helpers/application_helper.rb为辅助方法
app/views/layouts为模板文件
















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
