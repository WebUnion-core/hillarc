
# HillArc #

> HillArc —— 由 WebUnion 开发的、基于 Node.js + MySQL 环境、使用 Koa 框架的服务端架构。

## 初始化 ##

1. 先确保系统已配置 Node.js 和 MySQL 环境;
2. 使用`npm i`或`yarn`安装依赖;
3. 根据自己的需求修改`/config.js`的配置参数(服务地址、端口、数据库密码等等);
4. 在本地环境创建对应的数据库，编辑`/tools/init.sql`文件(初始化数据库脚本);
5. 执行`npm run initdb`命令初始化数据库。

## 运行 ##

1. 执行`npm run dev`即可启动调试模式，任何改动都会实时反应到终端;
2. 执行`npm run start`可启动生产服务。
