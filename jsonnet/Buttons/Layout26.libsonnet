# =====================================
# 此文件用于自定义键盘按键功能。
# 可根据需要修改下方内容，调整各类按键的行为
# 修改完成后，保存本文件，然后回到皮肤界面，
# 长按皮肤，选择「运行 main.jsonnet」生效。
#
# 包含中文26键布局和英文26键布局中的字母键
# =====================================

local colors = import '../Constants/Colors.libsonnet';
local fonts = import '../Constants/Fonts.libsonnet';
local settings = import '../Settings.libsonnet';

{
  local root = self,

  // 按键定义
  qButton: {
    name: 'qButton',
    params: {
      action: { character: 'q' },
      uppercased: { action: { character: 'Q' } },
      swipeUp: { action: { character: '1' } },
      swipeDown: {
        action: 'tab',
        systemImageName: 'arrow.right.to.line'
      },
      longPress: [
        { action: { character: 'q' }, selected: true },
        { action: { character: 'Q' } },
      ],
    },
  },
  wButton: {
    name: 'wButton',
    params: {
      action: { character: 'w' },
      uppercased: { action: { character: 'W' } },
      swipeUp: { action: { character: '2' } },
      longPress: [
        { action: { character: 'w' } },
        #{ action: { character: 'ŵ' } },
        { action: { character: 'W' }, selected: true },
        #{ action: { character: 'Ŵ' } },
      ],
    },
  },
  eButton: {
    name: 'eButton',
    params: {
      action: { character: 'e' },
      uppercased: { action: { character: 'E' } },
      swipeUp: { action: { character: '3' } },
      longPress: [
        { action: { character: 'e' } },
        { action: { character: 'ē' } },
        { action: { character: 'é' }, selected: true },
        { action: { character: 'ě' } },
        { action: { character: 'è' } },
        #{ action: { character: 'ë' } },
        #{ action: { character: 'ê' } },
        #{ action: { character: 'ẽ' } },
        #{ action: { character: 'ė' } },
        #{ action: { character: 'ę' } },
        { action: { character: 'E' } },
        { action: { character: 'Ē' } },
        { action: { character: 'É' } },
        { action: { character: 'Ě' } },
        { action: { character: 'È' } },
        #{ action: { character: 'Ë' } },
        #{ action: { character: 'Ê' } },
        #{ action: { character: 'Ẽ' } },
        #{ action: { character: 'Ė' } },
        #{ action: { character: 'Ę' } },
      ],
    },
  },
  rButton: {
    name: 'rButton',
    params: {
      action: { character: 'r' },
      uppercased: { action: { character: 'R' } },
      swipeUp: { action: { character: '4' } },
      longPress: [
        { action: { character: 'r' } },
        { action: { character: 'γ' } },
        #{ action: { character: 'ř' } },
        { action: { character: 'R' }, selected: true },
        #{ action: { character: 'Ř' } },
        { action: { character: 'Γ' } },
      ],
    },
  },
  tButton: {
    name: 'tButton',
    params: {
      action: { character: 't' },
      uppercased: { action: { character: 'T' } },
      swipeUp: { action: { character: '5' } },
      longPress: [
        { action: { character: 't' } },
        #{ action: { character: 'ț' } },
        #{ action: { character: 'ť' } },
        { action: { character: 'þ' } },
        { action: { character: 'T' }, selected: true },
        #{ action: { character: 'Ț' } },
        #{ action: { character: 'Ť' } },
        { action: { character: 'Þ' } },
      ],
    },
  },
  yButton: {
    name: 'yButton',
    params: {
      action: { character: 'y' },
      uppercased: { action: { character: 'Y' } },
      swipeUp: { action: { character: '6' } },
      longPress: [
        { action: { character: 'y' } },
        #{ action: { character: 'ÿ' } },
        #{ action: { character: 'ŷ' } },
        #{ action: { character: 'ý' } },
        { action: { character: 'Y' }, selected: true },
        #{ action: { character: 'Ÿ' } },
        #{ action: { character: 'Ŷ' } },
        #{ action: { character: 'Ý' } },
      ],
    },
  },
  uButton: {
    name: 'uButton',
    params: {
      action: { character: 'u' },
      uppercased: { action: { character: 'U' } },
      swipeUp: { action: { character: '7' } },
      longPress: [
        { action: { character: 'u' } },
        { action: { character: 'ü' } },
        { action: { character: 'ū' } },
        { action: { character: 'ú' } },
        { action: { character: 'ǔ' } },
        { action: { character: 'ù' } },
        { action: { character: 'μ' } },
        #{ action: { character: 'ų' } },
        #{ action: { character: 'ů' } },
        #{ action: { character: 'ű' } },
        #{ action: { character: 'ũ' } },
        #{ action: { character: 'û' } },
        { action: { character: 'U' }, selected: true },
        { action: { character: 'Ü' } },
        { action: { character: 'Ū' } },
        { action: { character: 'Ú' } },
        { action: { character: 'Ǔ' } },
        { action: { character: 'Ù' } },
        #{ action: { character: 'Ų' } },
        #{ action: { character: 'Ů' } },
        #{ action: { character: 'Ű' } },
        #{ action: { character: 'Ũ' } },
        #{ action: { character: 'Û' } },
      ],
    },
  },
  iButton: {
    name: 'iButton',
    params: {
      action: { character: 'i' },
      uppercased: { action: { character: 'I' } },
      swipeUp: { action: { character: '8' } },
      swipeDown: { action: { character: '|' } },
      longPress: [
        { action: { character: 'i' } },
        { action: { character: 'ī' } },
        { action: { character: 'í' } },
        { action: { character: 'ǐ' } },
        { action: { character: 'ì' } },
        #{ action: { character: 'į' } },
        #{ action: { character: 'ı' } },
        #{ action: { character: 'ĩ' } },
        #{ action: { character: 'ï' } },
        #{ action: { character: 'î' } },
        { action: { character: 'I' } },
        { action: { character: 'Ī' }, selected: true },
        { action: { character: 'Í' } },
        { action: { character: 'Ǐ' } },
        { action: { character: 'Ì' } },
        #{ action: { character: 'Į' } },
        #{ action: { character: 'İ' } },
        #{ action: { character: 'Ĩ' } },
        #{ action: { character: 'Ï' } },
        #{ action: { character: 'Î' } },
      ],
    },
  },
  oButton: {
    name: 'oButton',
    params: {
      action: { character: 'o' },
      uppercased: { action: { character: 'O' } },
      swipeUp: { action: { character: '9' } },
      swipeDown: { action: { character: '<' } },
      longPress: [
        { action: { character: 'o' } },
        { action: { character: 'ō' } },
        { action: { character: 'ó' } },
        { action: { character: 'ǒ' } },
        { action: { character: 'ò' } },
        #{ action: { character: 'ő' } },
        #{ action: { character: 'õ' } },
        #{ action: { character: 'ö' } },
        #{ action: { character: 'ô' } },
        { action: { character: 'ø' } },
        { action: { character: 'œ' } },
        { action: { character: 'O' }, selected: true },
        { action: { character: 'Ō' } },
        { action: { character: 'Ó' } },
        { action: { character: 'Ǒ' } },
        { action: { character: 'Ò' } },
        #{ action: { character: 'Ő' } },
        #{ action: { character: 'Õ' } },
        #{ action: { character: 'Ö' } },
        #{ action: { character: 'Ô' } },
        { action: { character: 'Ø' } },
        { action: { character: 'Œ' } },
      ],
    },
  },
  pButton: {
    name: 'pButton',
    params: {
      action: { character: 'p' },
      uppercased: { action: { character: 'P' } },
      swipeUp: { action: { character: '0' } },
      swipeDown: { action: { character: '>' } },
      longPress: [
        { action: { character: 'p' } },
        { action: { character: 'P' }, selected: true },
      ],
    },
  },

  // 第二行字母键 (ASDF)
  aButton: {
    name: 'aButton',
    params: {
      action: { character: 'a' },
      uppercased: { action: { character: 'A' } },
      swipeUp: { action: { character: '!' } },
      swipeDown: {
        action: { shortcut: '#selectText' },
        text: '全',
        systemImageName: 'selection.pin.in.out',
      },
      longPress: [
        { action: { shortcut: '#左手模式' }, systemImageName: 'keyboard.onehanded.left' },
        { action: { character: 'a' }, selected: true },
        { action: { character: 'ā' } },
        { action: { character: 'á' } },
        { action: { character: 'ǎ' } },
        { action: { character: 'à' } },
        #{ action: { character: 'ã' } },
        #{ action: { character: 'å' } },
        #{ action: { character: 'ă' } },
        #{ action: { character: 'ą' } },
        #{ action: { character: 'â' } },
        #{ action: { character: 'ä' } },
        { action: { character: 'α' } },
        { action: { character: 'æ' } },
        { action: { character: 'A' } },
        { action: { character: 'Ā' } },
        { action: { character: 'Á' } },
        { action: { character: 'Ǎ' } },
        { action: { character: 'À' } },
        #{ action: { character: 'Ã' } },
        #{ action: { character: 'Å' } },
        #{ action: { character: 'Ă' } },
        #{ action: { character: 'Ą' } },
        #{ action: { character: 'Â' } },
        #{ action: { character: 'Ä' } },
        { action: { character: 'Æ' } },
      ],
    },
  },
  sButton: {
    name: 'sButton',
    params: {
      action: { character: 's' },
      uppercased: { action: { character: 'S' } },
      swipeUp: { action: { character: '^' } },
      swipeDown: { action: { character: '%' } },
      longPress: [
        { action: { character: 's' }, selected: true  },
        { action: { character: 'ß' } },
        #{ action: { character: 'ş' } },
        #{ action: { character: 'ș' } },
        #{ action: { character: 'ś' } },
        #{ action: { character: 'š' } },
        { action: { character: 'S' } },
        { action: { character: 'ẞ' } },
        #{ action: { character: 'Ś' } },
        #{ action: { character: 'Š' } },
        #{ action: { character: 'Ş' } },
        #{ action: { character: 'Ș' } },
      ],
    },
  },
  dButton: {
    name: 'dButton',
    params: {
      action: { character: 'd' },
      uppercased: { action: { character: 'D' } },
      swipeUp: { action: { character: '/' } },
      swipeDown: { action: { character: '\\' } },
      longPress: [
        { action: { character: 'd' } },
        #{ action: { character: 'ď' } },
        #{ action: { character: 'ð' } },
        { action: { character: 'D' }, selected: true },
        #{ action: { character: 'Ď' } },
        #{ action: { character: 'Ð' } },
      ],
    },
  },
  fButton: {
    name: 'fButton',
    params: {
      action: { character: 'f' },
      uppercased: { action: { character: 'F' } },
      swipeUp: { action: { character: ';' } },
      swipeDown: { action: { character: ':' } },
      longPress: [
        { action: { character: 'f' } },
        { action: { character: 'F' }, selected: true },
      ],
    },
  },
  gButton: {
    name: 'gButton',
    params: {
      action: { character: 'g' },
      uppercased: { action: { character: 'G' } },
      swipeUp: { action: { character: '(' } },
      swipeDown: { action: { character: ')' } },
      longPress: [
        { action: { character: 'g' } },
        #{ action: { character: 'ğ' } },
        #{ action: { character: 'ġ' } },
        { action: { character: 'G' }, selected: true },
        #{ action: { character: 'Ğ' } },
        #{ action: { character: 'Ġ' } },
      ],
    },
  },
  hButton: {
    name: 'hButton',
    params: {
      action: { character: 'h' },
      uppercased: { action: { character: 'H' } },
      swipeUp: { action: { character: '-' } },
      swipeDown: { action: { character: '_' } },
      longPress: [
        { action: { character: 'h' } },
        { action: { character: 'H' }, selected: true },
      ],
    },
  },
  jButton: {
    name: 'jButton',
    params: {
      action: { character: 'j' },
      uppercased: { action: { character: 'J' } },
      swipeUp: { action: { character: '#' } },
      swipeDown: { action: { character: '+' } },
      longPress: [
        { action: { character: 'j' } },
        { action: { character: 'J' }, selected: true },
      ],
    },
  },
  kButton: {
    name: 'kButton',
    params: {
      action: { character: 'k' },
      uppercased: { action: { character: 'K' } },
      swipeUp: { action: { character: '{' } },
      swipeDown: { action: { character: '}' } },
      longPress: [
        { action: { character: 'k' } },
        #{ action: { character: 'ķ' } },
        { action: { character: 'K' }, selected: true },
        #{ action: { character: 'Ķ' } },
      ],
    },
  },
  lButton: {
    name: 'lButton',
    params: {
      action: { character: 'l' },
      uppercased: { action: { character: 'L' } },
      swipeUp: { action: { character: '"' } },
      swipeDown: { action: { character: "'" } },
      longPress: [
        { action: { shortcut: '#右手模式' }, systemImageName: 'keyboard.onehanded.right' },
        { action: { character: 'l' } },
        #{ action: { character: 'ľ' } },
        #{ action: { character: 'ļ' } },
        #{ action: { character: 'ł' } },
        { action: { character: 'L' }, selected: true },
        #{ action: { character: 'Ľ' } },
        #{ action: { character: 'Ļ' } },
        #{ action: { character: 'Ł' } },
      ],
    },
  },

  // 第三行字母键 (ZXCV)
  zButton: {
    name: 'zButton',
    params: {
      action: { character: 'z' },
      uppercased: { action: { character: 'Z' } },
      swipeUp: { action: { character: '@' } },
      swipeDown: {
        action: { shortcut: '#undo' },
        text: '撤',
        systemImageName: 'arrow.uturn.left'
      },
      longPress: [
        { action: { character: 'z' } },
        #{ action: { character: 'ź' } },
        #{ action: { character: 'ž' } },
        #{ action: { character: 'ż' } },
        { action: { character: 'Z' }, selected: true },
        #{ action: { character: 'Ź' } },
        #{ action: { character: 'Ž' } },
        #{ action: { character: 'Ż' } },
      ],
    },
  },
  xButton: {
    name: 'xButton',
    params: {
      action: { character: 'x' },
      uppercased: { action: { character: 'X' } },
      swipeUp: { action: { character: '*' } },
      swipeDown: {
        action: { shortcut: '#cut' },
        text: '剪',
        systemImageName: 'scissors'
      },
      longPress: [
        { action: { character: 'x' } },
        { action: { character: 'X' }, selected: true },
      ],
    },
  },
  cButton: {
    name: 'cButton',
    params: {
      action: { character: 'c' },
      uppercased: { action: { character: 'C' } },
      swipeUp: { action: { character: '`' } },
      swipeDown: {
        action: { shortcut: '#copy' },
        text: '复',
        systemImageName: 'doc.on.doc'
      },
      longPress: [
        { action: { character: 'c' } },
        #{ action: { character: 'ç' } },
        #{ action: { character: 'ć' } },
        #{ action: { character: 'č' } },
        #{ action: { character: 'ċ' } },
        { action: { character: 'C' }, selected: true },
        #{ action: { character: 'Ç' } },
        #{ action: { character: 'Ć' } },
        #{ action: { character: 'Č' } },
        #{ action: { character: 'Ċ' } },
      ],
    },
  },
  vButton: {
    name: 'vButton',
    params: {
      action: { character: 'v' },
      uppercased: { action: { character: 'V' } },
      swipeUp: { action: { character: '=' } },
      swipeDown: {
        action: { shortcut: '#paste' },
        text: '贴',
        systemImageName: 'doc.on.clipboard'
      },
      longPress: [
        { action: { character: 'v' } },
        { action: { character: 'ü' } },
        { action: { character: 'V' }, selected: true },
        { action: { character: 'Ü' } },
      ],
    },
  },
  bButton: {
    name: 'bButton',
    params: {
      action: { character: 'b' },
      uppercased: { action: { character: 'B' } },
      swipeUp: { action: { character: '[' } },
      swipeDown: { action: { character: ']' } },
      longPress: [
        { action: { character: 'b' } },
        { action: { character: 'β' } },
        { action: { character: 'B' }, selected: true },
      ],
    },
  },
  nButton: {
    name: 'nButton',
    params: {
      action: { character: 'n' },
      uppercased: { action: { character: 'N' } },
      swipeUp: { action: { character: '&' } },
      swipeDown: { action: { character: '~' } },
      longPress: [
        { action: { character: 'n' } },
        #{ action: { character: 'ň' } },
        #{ action: { character: 'ņ' } },
        #{ action: { character: 'ń' } },
        #{ action: { character: 'ñ' } },
        { action: { character: 'N' }, selected: true },
        #{ action: { character: 'Ň' } },
        #{ action: { character: 'Ņ' } },
        #{ action: { character: 'Ń' } },
        #{ action: { character: 'Ñ' } },
      ],
    },
  },
  mButton: {
    name: 'mButton',
    params: {
      action: { character: 'm' },
      uppercased: { action: { character: 'M' } },
      swipeUp: { action: { character: '?' } },
      swipeDown: { action: { character: '$' } },
      longPress: [
        { action: { character: 'μ' } },
        { action: { character: 'm' } },
        { action: { character: 'M' }, selected: true },
      ],
    },
  },

  letterButtons: [
    self.qButton, self.wButton, self.eButton, self.rButton, self.tButton,
    self.yButton, self.uButton, self.iButton, self.oButton, self.pButton,
    self.aButton, self.sButton, self.dButton, self.fButton, self.gButton,
    self.hButton, self.jButton, self.kButton, self.lButton,
    self.zButton, self.xButton, self.cButton, self.vButton, self.bButton,
    self.nButton, self.mButton,
  ],
}
