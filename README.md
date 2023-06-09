# Space

用Godot做的一个2D太空游戏

## 简介

一个无聊的游戏

开发中

## 更新日志

### 2023-06-09

做了较大改动

用preload()把原本需要class_name的类包装起来

增加了Classes单例，行为类似于namespace

之后几乎不会出现class_name，而是用Classes+preload()代替

但不会为资源添加类似Classes的Resources单例，因为把资源全部加载需要大量内存

但Resources依然会出现，仅加载部分资源

### 2023-06-03

做了些修改

增加了插件（Plugin）

具体实现等待下次

### 2023-05-25

做了些修改

增加了Error界面

### 2023-05-21

更新了模组有关的内容

可以从json文件加载模组（待完善）

### 2023-05-20

做了些修改

增加了新的图标

### 2023-05-13

完成了StartMenu

增加了界面之间的跳转

部分文件上传错地方了，懒得改了

### 2023-05-12

对文件系统做了修改

分为：assets、sources两个文件夹

sources下分为：graphics、interface、logic、modification、utilities

未来也许会实现模组（modification）

### 2023-05-06

StarryBackground因为有问题，所以换了一个设计思路，但是还是有问题，先搁置一下

### 2023-05-03

增加了一个StarryBackground，用于展示星星，但是有点问题

渲染器从Forward+改为Mobile
