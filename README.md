
本键盘皮肤在「空山素影」皮肤的基础上做了以下自定义修改。

## 修改 1: 9 键 / 26 键切换，切换键盘的同时切换输入方案

9 键键盘对应「中文九键」输入方案。
26 键键盘对应「雾凇拼音」输入方案。

通过工具栏上的键盘切换按钮完成切换。

- 在元书的方案列表中启用并部署中文九键和雾凇拼音。默认方案 ID 分别为 `t9` 和 `rime_ice`；如果实际 ID 不同，可在 `jsonnet/Settings.libsonnet` 中修改 `layoutSwitchSchema9` 和 `layoutSwitchSchema26`。
- `keyboardLayout` 设为 `9`、`26` 或 `26b`，且 `toolbarSlideButtons` 包含 `28` 时，中文键盘的工具栏显示切换按钮。修改设置后需重新编译皮肤。
- 切换前建议先完成当前输入；切换过程中未上屏内容的处理取决于元书和 Rime。
- 此功能使用元书的组合动作，需要支持 `combine` 的元书版本（官方文档注明 TestFlight 349 及以上）。英文和自定义数字、符号键盘的返回按钮使用“返回上一个键盘”。
- 元书内置符号或表情键盘可能自动返回默认中文键盘；重新打开键盘或通过其他入口单独切换方案时，布局也不一定自动跟随。若布局与方案不匹配，请用工具栏按钮重新切换，并检查空格键上的方案名称。本功能的返回和恢复行为需要在实际设备上验证。

## 自定义皮肤调整说明

- 皮肤的基本设置`jsonnet/Settings.libsonnet`
  + 浮动键盘中的“微调”可以直接打开该文件进行编辑。
  + 修改后保存，重新编译皮肤即可生效。

- 键盘按键功能设置`jsonnet/Buttons/`
  + 浮动键盘中的“按键”会打开`jsonnet/Buttons/`文件夹下的 README.md，方便查看各按键在哪个文件
  + 退出 README.md 后再打开同目录下的具体按键文件进行编辑。
  + 修改后保存，重新编译皮肤即可生效。

## 手机端编译

长按皮肤，选择「运行 main.jsonnet」

## PC 端编译

PC 端编译时需要安装 `jsonnet` 等命令行工具。

```shell
# windows
jsonnet -S -m . --tla-code debug=true .\jsonnet\main.jsonnet

# linux/macOS
jsonnet -S -m . --tla-code debug=true ./jsonnet/main.jsonnet
```

## 原皮肤 Github 仓库地址
- [空山素影](https://github.com/luozikuan/kongshan-suying)
- [最新版本发布地址](https://github.com/luozikuan/kongshan-suying/releases/latest)
- [配套测试方案](https://github.com/luozikuan/rime-tailor)
