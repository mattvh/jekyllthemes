---
layout: post
title: wu-kan.github.io
date: 2019-03-20 18:00:00
homepage: https://github.com/wu-kan/wu-kan.github.io
download: https://github.com/wu-kan/wu-kan.github.io/archive/master.zip
demo: https://wu-kan.github.io
author: WuK
thumbnail: wu-kan.github.io.png
license: MIT License
license_link: https://github.com/wu-kan/wu-kan.github.io/blob/master/LICENSE
---
# wu-kan.github.io
DEMO：
![](https://wu-kan.github.io/public/image/2019-01-18-1.jpg)
![](https://wu-kan.github.io/public/image/2019-01-18-2.jpg)
在线预览&主页：https://wu-kan.github.io

## 快速开始
1. Fork [wu-kan/wu-kan.github.io](https://github.com/wu-kan/wu-kan.github.io)到你的仓库，并在设置里开启gh-pages
2. 修改_config.yml为你自己的信息
3. 删除_post目录下的博文，开始写你自己的文章

详细配置可以参见[这篇博文](https://wu-kan.github.io/posts/博客搭建/基于Jekyll搭建个人博客)

## Feature/Todo
从[这个页面](https://magical-girl.site/)得到的灵感，目标是博客上除了文章和作为导航的Live2D之外尽量不出现其他的模块。

- [x] 完成博客文章标签页
- [ ] 完成博客文章分类页（分类暂时和标签没区别）
- [ ] 重写博客首页，做一个干净的封面，不再显示文章
- [x] 加入评论系统，暂时考虑用valine+leancloud实现
  - [x] 基于valine的阅读量统计
- [x] 加入不蒜子统计
- [x] <span class="fa fa-font-awesome"></span> Font Awesome
- [x] 全站搜索
- [x] 移植[原博客的ribbon动态背景](https://github.com/theme-next/theme-next-canvas-ribbon)
- [x] 调整代码块风格，并加上代码选中按钮
- [x] 加入可以自动展开、标号的目录
  - [ ] 自动展开
- [x] mermaid
  - [x] Markdown代码扩展
- [x] $\KaTeX$
- [x] Live2D
  - [x] 导航
  - [x] 一言
  - [ ] 找个人工智障对话的api接入现在的Live2D对话，当前是显示几个已有的句子或一言
  - [ ] 删改掉原来的的骚话-_-
  - [ ] 加上切换Live2D显示/关闭的按钮
  - [ ] 使用自己搭建的Live2D后端API
    - [ ] 收集一些Live2D Model
