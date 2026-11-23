# =====================================
# 此文件用于自定义键盘按键功能。
# 可根据需要修改下方内容，调整各类按键的行为
# 修改完成后，保存本文件，然后回到皮肤界面，
# 长按皮肤，选择「运行 main.jsonnet」生效。
#
# 包含中文9键布局的按键
# =====================================

local colors = import '../Constants/Colors.libsonnet';
local fonts = import '../Constants/Fonts.libsonnet';
local settings = import '../Settings.libsonnet';
local commonButtons = import './Common.libsonnet';

{
  local root = self,

  // T9 按键
  t9OneButton: {
    name: 't9OneButton',
    params: {
      action: { character: '1' },
      #swipeUp: { action: { symbol: '1' } },
      swipeUp: { text: '1' },
      longPress: [
        { action: { character: '1' }, selected: true },
      ],
      text: '@/.',

      whenPreeditChanged: {
        text: '分词',
      }
    },
  },
  t9TwoButton: {
    name: 't9TwoButton',
    params: {
      action: { character: '2' },
      #swipeUp: { action: { symbol: '2' } },
      swipeUp: { text: '2' },
      longPress: [
        { action: { character: 'a' } },
        { action: { character: 'b' } },
        { action: { character: 'c' } },
        { action: { character: '2' }, selected: true },
        { action: { character: 'A' } },
        { action: { character: 'B' } },
        { action: { character: 'C' } },
      ],
      text: 'abc',
    },
  },
  t9ThreeButton: {
    name: 't9ThreeButton',
    params: {
      action: { character: '3' },
      #swipeUp: { action: { symbol: '3' } },
      swipeUp: { text: '3' },
      longPress: [
        { action: { character: 'd' } },
        { action: { character: 'e' } },
        { action: { character: 'f' } },
        { action: { character: '3' }, selected: true },
        { action: { character: 'D' } },
        { action: { character: 'E' } },
        { action: { character: 'F' } },
      ],
      text: 'def',
    },
  },
  t9FourButton: {
    name: 't9FourButton',
    params: {
      action: { character: '4' },
      #swipeUp: { action: { symbol: '4' } },
      swipeUp: { text: '4' },
      longPress: [
        { action: { character: 'g' } },
        { action: { character: 'h' } },
        { action: { character: 'i' } },
        { action: { character: '4' }, selected: true },
        { action: { character: 'G' } },
        { action: { character: 'H' } },
        { action: { character: 'I' } },
      ],
      text: 'ghi',
    },
  },
  t9FiveButton: {
    name: 't9FiveButton',
    params: {
      action: { character: '5' },
      #swipeUp: { action: { symbol: '5' } },
      swipeUp: { text: '5' },
      longPress: [
        { action: { character: 'j' } },
        { action: { character: 'k' } },
        { action: { character: 'l' } },
        { action: { character: '5' }, selected: true },
        { action: { character: 'J' } },
        { action: { character: 'K' } },
        { action: { character: 'L' } },
      ],
      text: 'jkl',
    },
  },
  t9SixButton: {
    name: 't9SixButton',
    params: {
      action: { character: '6' },
      #swipeUp: { action: { symbol: '6' } },
      swipeUp: { text: '6' },
      longPress: [
        { action: { character: 'm' } },
        { action: { character: 'n' } },
        { action: { character: 'o' } },
        { action: { character: '6' }, selected: true },
        { action: { character: 'M' } },
        { action: { character: 'N' } },
        { action: { character: 'O' } },
      ],
      text: 'mno',
    },
  },
  t9SevenButton: {
    name: 't9SevenButton',
    params: {
      action: { character: '7' },
      #swipeUp: { action: { symbol: '7' } },
      swipeUp: { text: '7' },
      longPress: [
        { action: { character: 'p' } },
        { action: { character: 'q' } },
        { action: { character: 'r' } },
        { action: { character: 's' } },
        { action: { character: '7' }, selected: true },
        { action: { character: 'P' } },
        { action: { character: 'Q' } },
        { action: { character: 'R' } },
        { action: { character: 'S' } },
      ],
      text: 'pqrs',
    },
  },
  t9EightButton: {
    name: 't9EightButton',
    params: {
      action: { character: '8' },
      #swipeUp: { action: { symbol: '8' } },
      swipeUp: { text: '8' },
      longPress: [
        { action: { character: 't' } },
        { action: { character: 'u' } },
        { action: { character: 'v' } },
        { action: { character: '8' }, selected: true },
        { action: { character: 'T' } },
        { action: { character: 'U' } },
        { action: { character: 'V' } },
      ],
      text: 'tuv',
    },
  },
  t9NineButton: {
    name: 't9NineButton',
    params: {
      action: { character: '9' },
      #swipeUp: { action: { symbol: '9' } },
      swipeUp: { text: '9' },
      longPress: [
        { action: { character: 'w' } },
        { action: { character: 'x' } },
        { action: { character: 'y' } },
        { action: { character: 'z' } },
        { action: { character: '9' }, selected: true },
        { action: { character: 'W' } },
        { action: { character: 'X' } },
        { action: { character: 'Y' } },
        { action: { character: 'Z' } },
      ],
      text: 'wxyz',
    },
  },
  // t9ZeroButton: {
  //   name: 't9ZeroButton',
  //   params: {
  //     action: { character: '0' },
  //     swipeUp: { action: { symbol: '0' } },
  //     fontSize: 20,
  //   },
  // },

  t9Buttons: [
    self.t9OneButton,
    self.t9TwoButton,
    self.t9ThreeButton,
    self.t9FourButton,
    self.t9FiveButton,
    self.t9SixButton,
    self.t9SevenButton,
    self.t9EightButton,
    self.t9NineButton,
    // self.t9ZeroButton,
  ],

  // t9拼音符号列表兼拼音候选
  t9SymbolsCollection: {
    name: 't9SymbolsCollection',
    params: {
      type: 't9Symbols',
    },
  },

  // 横屏时的 T9 候选列表
  t9CandidatesCollection: {
    name: 't9CandidatesCollection',
    params: {
      type: 'verticalCandidates',
    },
  },

  // 普通状态上滑只显示数字 0；预编辑时保留“次选上屏”动作
  spaceButton: {
    name: 'spaceButton',
    params: std.mergePatch(commonButtons.spaceButton.params, {
      #swipeUp: { action: { symbol: '0' } },
      swipeUp: { text: '0' },
      longPress: [
        { action: { character: '0' }, selected: true },
      ],
    }),
  },

  // 光标右移
  cursorRightButton: {
    name: 'cursorRightButton',
    params: {
      action: { sendKeys: 'Down' },
      text: '选择',
    }
  },
}
