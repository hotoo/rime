
# 闲耘的 Rime 配置说明

[Rime](http://code.google.com/p/rimeime/) 输入法是一款适用于 Mac OSX, Linux,
Windows 的输入法，Rime 在不同平台下的对应名称如下：

* Mac OSX: 鼠鬚管(Squirrel)
    配置目录：`~/Library/Rime/`
* Linux: 中州韻(ibus-rime)
    配置目录：`~/.config/ibus/rime/`
* Windows: 小狼毫(Weasel)
    配置目录：`%APPDATA%\Rime`

Rime 的配置文件不同平台的放置在不同的目录，
在配置目录中，主要使用 `yaml` 进行配置。
目录中自有的配置文件不建议直接修改，因为可能会被自动复写。
用户配置一般以原始配置文件名增加 .custom 二级后缀的方式，
例如：Mac OSX 下的原始配置 `squirrel.yaml`，对应的用户配置就是
`squirrel.custom.yaml` 文件。

## 参考
* [Rime 定製指南](http://code.google.com/p/rimeime/wiki/CustomizationGuide)
* [中州韵（小狼毫，鼠须管）输入法设置](http://blog.yesmryang.net/rime-setting/)
