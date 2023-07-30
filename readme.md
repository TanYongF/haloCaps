# haloCaps⌨
![Static Badge](https://img.shields.io/badge/AutoHotKey-%E6%9E%84%E5%BB%BA-blue?logo=autohotkey&link=https%3A%2F%2Fwww.autohotkey.com%2F)
![Static Badge](https://img.shields.io/badge/%E7%94%9F%E4%BA%A7%E5%8A%9B%E5%B7%A5%E5%85%B7-8A2BE2?logo=googlesearchconsole&logoColor=white&link=https%3A%2F%2Fwww.autohotkey.com%2F)
![Static Badge](https://img.shields.io/badge/%E8%BD%BB%E9%87%8F%E7%BA%A7%E5%BA%94%E7%94%A8-green?logo=fastapi&logoColor=white&link=https%3A%2F%2Fwww.autohotkey.com%2F)



是一款轻量级全局热键设置软件，主要功能是通过将**不太常用**但是**地理位置绝佳**的`CapsLock`与**其他键**组合，来达到不同的功能。例如移动光标、删除等基本操作，大大增加码字效率，缩短手指移动距离！


## 使用指南
1. 下载[Releases](https://github.com/TanYongF/haloCaps/releases)最新版本，解压到任意路径
2. 修改`conf.ini`中的`[keys]`段配置，每一行配置类似`caps_a = keyFunc_moveLeft`
- `caps_a`指代的是`CapsLock+A`按键键位
- `keyFunc_moveLeft`指的该键位下所要产生的功能。
2. 双击 `haloCaps.exe`，桌面出现绿色`H`图标，如下图所示
  
![image-1](https://kauizhaotan.oss-accelerate.aliyuncs.com/blog/image-1.png?x-oss-process=style/water)

### 目前支持的键位
- `caps_[qwerasdf]` (代表`CapsLock+Q/W/E/R/A/S/D/F`

### 目前支持的功能

|  函数名称   | 功能  |
|  ----  | ----  |
|  `keyFunc_moveDown` | 下移光标 |
| `keyFunc_moveUp`  | 上移光标 |
| `keyFunc_moveLeft` | 左移光标 |
| `keyFunc_moveRight` | 右移光标 |
| `keyFunc_delete`| 回退按键 |
| `keyFunc_enter` | 回车按键 | 


## 其他配置

### 1. 自启动
如果想要自启动只需要修改`conf.ini`下的`autostart`值即可
```ini
autostart = true/false 
```


