/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.android.types;

private {
    import core.stdc.config;
    import core.stdc.stdio;
}

alias int8_t = byte;
alias uint8_t = ubyte;
alias int16_t = short;
alias uint16_t = ushort;
alias int32_t = int;
alias uint32_t = uint;
alias int64_t = long;
alias uint64_t = ulong;

// asset_manager.h
enum : int {
    AASSET_MODE_UNKNOWN   = 0,
    AASSET_MODE_RANDOM    = 1,
    AASSET_MODE_STREAMING = 2,
    AASSET_MODE_BUFFER    = 3
}
struct AAssetManager;
struct AAssetDir;
struct AAsset;

// configuration.h
struct AConfiguration;

enum : int {
    ACONFIGURATION_ORIENTATION_ANY  = 0x0000,
    ACONFIGURATION_ORIENTATION_PORT = 0x0001,
    ACONFIGURATION_ORIENTATION_LAND = 0x0002,
    ACONFIGURATION_ORIENTATION_SQUARE = 0x0003,

    ACONFIGURATION_TOUCHSCREEN_ANY  = 0x0000,
    ACONFIGURATION_TOUCHSCREEN_NOTOUCH  = 0x0001,
    ACONFIGURATION_TOUCHSCREEN_STYLUS  = 0x0002,
    ACONFIGURATION_TOUCHSCREEN_FINGER  = 0x0003,

    ACONFIGURATION_DENSITY_DEFAULT = 0,
    ACONFIGURATION_DENSITY_LOW = 120,
    ACONFIGURATION_DENSITY_MEDIUM = 160,
    ACONFIGURATION_DENSITY_TV = 213,
    ACONFIGURATION_DENSITY_HIGH = 240,
    ACONFIGURATION_DENSITY_XHIGH = 320,
    ACONFIGURATION_DENSITY_XXHIGH = 480,
    ACONFIGURATION_DENSITY_XXXHIGH = 640,
    ACONFIGURATION_DENSITY_NONE = 0xffff,

    ACONFIGURATION_KEYBOARD_ANY  = 0x0000,
    ACONFIGURATION_KEYBOARD_NOKEYS  = 0x0001,
    ACONFIGURATION_KEYBOARD_QWERTY  = 0x0002,
    ACONFIGURATION_KEYBOARD_12KEY  = 0x0003,

    ACONFIGURATION_NAVIGATION_ANY  = 0x0000,
    ACONFIGURATION_NAVIGATION_NONAV  = 0x0001,
    ACONFIGURATION_NAVIGATION_DPAD  = 0x0002,
    ACONFIGURATION_NAVIGATION_TRACKBALL  = 0x0003,
    ACONFIGURATION_NAVIGATION_WHEEL  = 0x0004,

    ACONFIGURATION_KEYSHIDDEN_ANY = 0x0000,
    ACONFIGURATION_KEYSHIDDEN_NO = 0x0001,
    ACONFIGURATION_KEYSHIDDEN_YES = 0x0002,
    ACONFIGURATION_KEYSHIDDEN_SOFT = 0x0003,

    ACONFIGURATION_NAVHIDDEN_ANY = 0x0000,
    ACONFIGURATION_NAVHIDDEN_NO = 0x0001,
    ACONFIGURATION_NAVHIDDEN_YES = 0x0002,

    ACONFIGURATION_SCREENSIZE_ANY  = 0x00,
    ACONFIGURATION_SCREENSIZE_SMALL = 0x01,
    ACONFIGURATION_SCREENSIZE_NORMAL = 0x02,
    ACONFIGURATION_SCREENSIZE_LARGE = 0x03,
    ACONFIGURATION_SCREENSIZE_XLARGE = 0x04,

    ACONFIGURATION_SCREENLONG_ANY = 0x00,
    ACONFIGURATION_SCREENLONG_NO = 0x1,
    ACONFIGURATION_SCREENLONG_YES = 0x2,

    ACONFIGURATION_UI_MODE_TYPE_ANY = 0x00,
    ACONFIGURATION_UI_MODE_TYPE_NORMAL = 0x01,
    ACONFIGURATION_UI_MODE_TYPE_DESK = 0x02,
    ACONFIGURATION_UI_MODE_TYPE_CAR = 0x03,
    ACONFIGURATION_UI_MODE_TYPE_TELEVISION = 0x04,
    ACONFIGURATION_UI_MODE_TYPE_APPLIANCE = 0x05,

    ACONFIGURATION_UI_MODE_NIGHT_ANY = 0x00,
    ACONFIGURATION_UI_MODE_NIGHT_NO = 0x1,
    ACONFIGURATION_UI_MODE_NIGHT_YES = 0x2,

    ACONFIGURATION_SCREEN_WIDTH_DP_ANY = 0x0000,

    ACONFIGURATION_SCREEN_HEIGHT_DP_ANY = 0x0000,

    ACONFIGURATION_SMALLEST_SCREEN_WIDTH_DP_ANY = 0x0000,

    ACONFIGURATION_LAYOUTDIR_ANY  = 0x00,
    ACONFIGURATION_LAYOUTDIR_LTR  = 0x01,
    ACONFIGURATION_LAYOUTDIR_RTL  = 0x02,

    ACONFIGURATION_MCC = 0x0001,
    ACONFIGURATION_MNC = 0x0002,
    ACONFIGURATION_LOCALE = 0x0004,
    ACONFIGURATION_TOUCHSCREEN = 0x0008,
    ACONFIGURATION_KEYBOARD = 0x0010,
    ACONFIGURATION_KEYBOARD_HIDDEN = 0x0020,
    ACONFIGURATION_NAVIGATION = 0x0040,
    ACONFIGURATION_ORIENTATION = 0x0080,
    ACONFIGURATION_DENSITY = 0x0100,
    ACONFIGURATION_SCREEN_SIZE = 0x0200,
    ACONFIGURATION_VERSION = 0x0400,
    ACONFIGURATION_SCREEN_LAYOUT = 0x0800,
    ACONFIGURATION_UI_MODE = 0x1000,
    ACONFIGURATION_SMALLEST_SCREEN_SIZE = 0x2000,
    ACONFIGURATION_LAYOUTDIR = 0x4000
};

// input.h
enum : int {
    AKEY_STATE_UNKNOWN = -1,
    AKEY_STATE_UP = 0,
    AKEY_STATE_DOWN = 1,
    AKEY_STATE_VIRTUAL = 2
}

enum : int {
    AMETA_NONE = 0,
    AMETA_ALT_ON = 0x02,
    AMETA_ALT_LEFT_ON = 0x10,
    AMETA_ALT_RIGHT_ON = 0x20,
    AMETA_SHIFT_ON = 0x01,
    AMETA_SHIFT_LEFT_ON = 0x40,
    AMETA_SHIFT_RIGHT_ON = 0x80,
    AMETA_SYM_ON = 0x04,
    AMETA_FUNCTION_ON = 0x08,
    AMETA_CTRL_ON = 0x1000,
    AMETA_CTRL_LEFT_ON = 0x2000,
    AMETA_CTRL_RIGHT_ON = 0x4000,
    AMETA_META_ON = 0x10000,
    AMETA_META_LEFT_ON = 0x20000,
    AMETA_META_RIGHT_ON = 0x40000,
    AMETA_CAPS_LOCK_ON = 0x100000,
    AMETA_NUM_LOCK_ON = 0x200000,
    AMETA_SCROLL_LOCK_ON = 0x400000
}

struct AInputEvent;

enum : int {
    AINPUT_EVENT_TYPE_KEY = 1,
    AINPUT_EVENT_TYPE_MOTION = 2
}

enum : int {
    AKEY_EVENT_ACTION_DOWN = 0,
    AKEY_EVENT_ACTION_UP = 1,
    AKEY_EVENT_ACTION_MULTIPLE = 2
}

enum : int {
    AKEY_EVENT_FLAG_WOKE_HERE = 0x1,
    AKEY_EVENT_FLAG_SOFT_KEYBOARD = 0x2,
    AKEY_EVENT_FLAG_KEEP_TOUCH_MODE = 0x4,
    AKEY_EVENT_FLAG_FROM_SYSTEM = 0x8,
    AKEY_EVENT_FLAG_EDITOR_ACTION = 0x10,
    AKEY_EVENT_FLAG_CANCELED = 0x20,
    AKEY_EVENT_FLAG_VIRTUAL_HARD_KEY = 0x40,
    AKEY_EVENT_FLAG_LONG_PRESS = 0x80,
    AKEY_EVENT_FLAG_CANCELED_LONG_PRESS = 0x100,
    AKEY_EVENT_FLAG_TRACKING = 0x200,
    AKEY_EVENT_FLAG_FALLBACK = 0x400
}

static immutable int AMOTION_EVENT_ACTION_POINTER_INDEX_SHIFT = 8;

enum : int {
    AMOTION_EVENT_ACTION_MASK = 0xff,
    AMOTION_EVENT_ACTION_POINTER_INDEX_MASK  = 0xff00,
    AMOTION_EVENT_ACTION_DOWN = 0,
    AMOTION_EVENT_ACTION_UP = 1,
    AMOTION_EVENT_ACTION_MOVE = 2,
    AMOTION_EVENT_ACTION_CANCEL = 3,
    AMOTION_EVENT_ACTION_OUTSIDE = 4,
    AMOTION_EVENT_ACTION_POINTER_DOWN = 5,
    AMOTION_EVENT_ACTION_POINTER_UP = 6,
    AMOTION_EVENT_ACTION_HOVER_MOVE = 7,
    AMOTION_EVENT_ACTION_SCROLL = 8,
    AMOTION_EVENT_ACTION_HOVER_ENTER = 9,
    AMOTION_EVENT_ACTION_HOVER_EXIT = 10
}

enum : int {
    AMOTION_EVENT_FLAG_WINDOW_IS_OBSCURED = 0x1,
}

enum : int {
    AMOTION_EVENT_EDGE_FLAG_NONE = 0,
    AMOTION_EVENT_EDGE_FLAG_TOP = 0x01,
    AMOTION_EVENT_EDGE_FLAG_BOTTOM = 0x02,
    AMOTION_EVENT_EDGE_FLAG_LEFT = 0x04,
    AMOTION_EVENT_EDGE_FLAG_RIGHT = 0x08
}

enum : int {
    AMOTION_EVENT_AXIS_X = 0,
    AMOTION_EVENT_AXIS_Y = 1,
    AMOTION_EVENT_AXIS_PRESSURE = 2,
    AMOTION_EVENT_AXIS_SIZE = 3,
    AMOTION_EVENT_AXIS_TOUCH_MAJOR = 4,
    AMOTION_EVENT_AXIS_TOUCH_MINOR = 5,
    AMOTION_EVENT_AXIS_TOOL_MAJOR = 6,
    AMOTION_EVENT_AXIS_TOOL_MINOR = 7,
    AMOTION_EVENT_AXIS_ORIENTATION = 8,
    AMOTION_EVENT_AXIS_VSCROLL = 9,
    AMOTION_EVENT_AXIS_HSCROLL = 10,
    AMOTION_EVENT_AXIS_Z = 11,
    AMOTION_EVENT_AXIS_RX = 12,
    AMOTION_EVENT_AXIS_RY = 13,
    AMOTION_EVENT_AXIS_RZ = 14,
    AMOTION_EVENT_AXIS_HAT_X = 15,
    AMOTION_EVENT_AXIS_HAT_Y = 16,
    AMOTION_EVENT_AXIS_LTRIGGER = 17,
    AMOTION_EVENT_AXIS_RTRIGGER = 18,
    AMOTION_EVENT_AXIS_THROTTLE = 19,
    AMOTION_EVENT_AXIS_RUDDER = 20,
    AMOTION_EVENT_AXIS_WHEEL = 21,
    AMOTION_EVENT_AXIS_GAS = 22,
    AMOTION_EVENT_AXIS_BRAKE = 23,
    AMOTION_EVENT_AXIS_GENERIC_1 = 32,
    AMOTION_EVENT_AXIS_GENERIC_2 = 33,
    AMOTION_EVENT_AXIS_GENERIC_3 = 34,
    AMOTION_EVENT_AXIS_GENERIC_4 = 35,
    AMOTION_EVENT_AXIS_GENERIC_5 = 36,
    AMOTION_EVENT_AXIS_GENERIC_6 = 37,
    AMOTION_EVENT_AXIS_GENERIC_7 = 38,
    AMOTION_EVENT_AXIS_GENERIC_8 = 39,
    AMOTION_EVENT_AXIS_GENERIC_9 = 40,
    AMOTION_EVENT_AXIS_GENERIC_10 = 41,
    AMOTION_EVENT_AXIS_GENERIC_11 = 42,
    AMOTION_EVENT_AXIS_GENERIC_12 = 43,
    AMOTION_EVENT_AXIS_GENERIC_13 = 44,
    AMOTION_EVENT_AXIS_GENERIC_14 = 45,
    AMOTION_EVENT_AXIS_GENERIC_15 = 46,
    AMOTION_EVENT_AXIS_GENERIC_16 = 47,
}

enum : int {
    AMOTION_EVENT_BUTTON_PRIMARY = 1 << 0,
    AMOTION_EVENT_BUTTON_SECONDARY = 1 << 1,
    AMOTION_EVENT_BUTTON_TERTIARY = 1 << 2,
    AMOTION_EVENT_BUTTON_BACK = 1 << 3,
    AMOTION_EVENT_BUTTON_FORWARD = 1 << 4
}

enum : int {
    AMOTION_EVENT_TOOL_TYPE_UNKNOWN = 0,
    AMOTION_EVENT_TOOL_TYPE_FINGER = 1,
    AMOTION_EVENT_TOOL_TYPE_STYLUS = 2,
    AMOTION_EVENT_TOOL_TYPE_MOUSE = 3,
    AMOTION_EVENT_TOOL_TYPE_ERASER = 4
}

enum : int {
    AINPUT_SOURCE_CLASS_MASK = 0x000000ff,

    AINPUT_SOURCE_CLASS_BUTTON = 0x00000001,
    AINPUT_SOURCE_CLASS_POINTER = 0x00000002,
    AINPUT_SOURCE_CLASS_NAVIGATION = 0x00000004,
    AINPUT_SOURCE_CLASS_POSITION = 0x00000008,
    AINPUT_SOURCE_CLASS_JOYSTICK = 0x00000010,
}

enum : int {
    AINPUT_SOURCE_UNKNOWN = 0x00000000,

    AINPUT_SOURCE_KEYBOARD = 0x00000100 | AINPUT_SOURCE_CLASS_BUTTON,
    AINPUT_SOURCE_DPAD = 0x00000200 | AINPUT_SOURCE_CLASS_BUTTON,
    AINPUT_SOURCE_GAMEPAD = 0x00000400 | AINPUT_SOURCE_CLASS_BUTTON,
    AINPUT_SOURCE_TOUCHSCREEN = 0x00001000 | AINPUT_SOURCE_CLASS_POINTER,
    AINPUT_SOURCE_MOUSE = 0x00002000 | AINPUT_SOURCE_CLASS_POINTER,
    AINPUT_SOURCE_STYLUS = 0x00004000 | AINPUT_SOURCE_CLASS_POINTER,
    AINPUT_SOURCE_TRACKBALL = 0x00010000 | AINPUT_SOURCE_CLASS_NAVIGATION,
    AINPUT_SOURCE_TOUCHPAD = 0x00100000 | AINPUT_SOURCE_CLASS_POSITION,
    AINPUT_SOURCE_TOUCH_NAVIGATION = 0x00200000 | AINPUT_SOURCE_CLASS_NONE,
    AINPUT_SOURCE_JOYSTICK = 0x01000000 | AINPUT_SOURCE_CLASS_JOYSTICK,

    AINPUT_SOURCE_ANY = 0xffffff00,
}

enum : int {
    AINPUT_KEYBOARD_TYPE_NONE = 0,
    AINPUT_KEYBOARD_TYPE_NON_ALPHABETIC = 1,
    AINPUT_KEYBOARD_TYPE_ALPHABETIC = 2
}

struct AInputQueue;

// keycodes.h
enum : int {
    AKEYCODE_UNKNOWN         = 0,
    AKEYCODE_SOFT_LEFT       = 1,
    AKEYCODE_SOFT_RIGHT      = 2,
    AKEYCODE_HOME            = 3,
    AKEYCODE_BACK            = 4,
    AKEYCODE_CALL            = 5,
    AKEYCODE_ENDCALL         = 6,
    AKEYCODE_0               = 7,
    AKEYCODE_1               = 8,
    AKEYCODE_2               = 9,
    AKEYCODE_3               = 10,
    AKEYCODE_4               = 11,
    AKEYCODE_5               = 12,
    AKEYCODE_6               = 13,
    AKEYCODE_7               = 14,
    AKEYCODE_8               = 15,
    AKEYCODE_9               = 16,
    AKEYCODE_STAR            = 17,
    AKEYCODE_POUND           = 18,
    AKEYCODE_DPAD_UP         = 19,
    AKEYCODE_DPAD_DOWN       = 20,
    AKEYCODE_DPAD_LEFT       = 21,
    AKEYCODE_DPAD_RIGHT      = 22,
    AKEYCODE_DPAD_CENTER     = 23,
    AKEYCODE_VOLUME_UP       = 24,
    AKEYCODE_VOLUME_DOWN     = 25,
    AKEYCODE_POWER           = 26,
    AKEYCODE_CAMERA          = 27,
    AKEYCODE_CLEAR           = 28,
    AKEYCODE_A               = 29,
    AKEYCODE_B               = 30,
    AKEYCODE_C               = 31,
    AKEYCODE_D               = 32,
    AKEYCODE_E               = 33,
    AKEYCODE_F               = 34,
    AKEYCODE_G               = 35,
    AKEYCODE_H               = 36,
    AKEYCODE_I               = 37,
    AKEYCODE_J               = 38,
    AKEYCODE_K               = 39,
    AKEYCODE_L               = 40,
    AKEYCODE_M               = 41,
    AKEYCODE_N               = 42,
    AKEYCODE_O               = 43,
    AKEYCODE_P               = 44,
    AKEYCODE_Q               = 45,
    AKEYCODE_R               = 46,
    AKEYCODE_S               = 47,
    AKEYCODE_T               = 48,
    AKEYCODE_U               = 49,
    AKEYCODE_V               = 50,
    AKEYCODE_W               = 51,
    AKEYCODE_X               = 52,
    AKEYCODE_Y               = 53,
    AKEYCODE_Z               = 54,
    AKEYCODE_COMMA           = 55,
    AKEYCODE_PERIOD          = 56,
    AKEYCODE_ALT_LEFT        = 57,
    AKEYCODE_ALT_RIGHT       = 58,
    AKEYCODE_SHIFT_LEFT      = 59,
    AKEYCODE_SHIFT_RIGHT     = 60,
    AKEYCODE_TAB             = 61,
    AKEYCODE_SPACE           = 62,
    AKEYCODE_SYM             = 63,
    AKEYCODE_EXPLORER        = 64,
    AKEYCODE_ENVELOPE        = 65,
    AKEYCODE_ENTER           = 66,
    AKEYCODE_DEL             = 67,
    AKEYCODE_GRAVE           = 68,
    AKEYCODE_MINUS           = 69,
    AKEYCODE_EQUALS          = 70,
    AKEYCODE_LEFT_BRACKET    = 71,
    AKEYCODE_RIGHT_BRACKET   = 72,
    AKEYCODE_BACKSLASH       = 73,
    AKEYCODE_SEMICOLON       = 74,
    AKEYCODE_APOSTROPHE      = 75,
    AKEYCODE_SLASH           = 76,
    AKEYCODE_AT              = 77,
    AKEYCODE_NUM             = 78,
    AKEYCODE_HEADSETHOOK     = 79,
    AKEYCODE_FOCUS           = 80,   // *Camera* focus
    AKEYCODE_PLUS            = 81,
    AKEYCODE_MENU            = 82,
    AKEYCODE_NOTIFICATION    = 83,
    AKEYCODE_SEARCH          = 84,
    AKEYCODE_MEDIA_PLAY_PAUSE= 85,
    AKEYCODE_MEDIA_STOP      = 86,
    AKEYCODE_MEDIA_NEXT      = 87,
    AKEYCODE_MEDIA_PREVIOUS  = 88,
    AKEYCODE_MEDIA_REWIND    = 89,
    AKEYCODE_MEDIA_FAST_FORWARD = 90,
    AKEYCODE_MUTE            = 91,
    AKEYCODE_PAGE_UP         = 92,
    AKEYCODE_PAGE_DOWN       = 93,
    AKEYCODE_PICTSYMBOLS     = 94,
    AKEYCODE_SWITCH_CHARSET  = 95,
    AKEYCODE_BUTTON_A        = 96,
    AKEYCODE_BUTTON_B        = 97,
    AKEYCODE_BUTTON_C        = 98,
    AKEYCODE_BUTTON_X        = 99,
    AKEYCODE_BUTTON_Y        = 100,
    AKEYCODE_BUTTON_Z        = 101,
    AKEYCODE_BUTTON_L1       = 102,
    AKEYCODE_BUTTON_R1       = 103,
    AKEYCODE_BUTTON_L2       = 104,
    AKEYCODE_BUTTON_R2       = 105,
    AKEYCODE_BUTTON_THUMBL   = 106,
    AKEYCODE_BUTTON_THUMBR   = 107,
    AKEYCODE_BUTTON_START    = 108,
    AKEYCODE_BUTTON_SELECT   = 109,
    AKEYCODE_BUTTON_MODE     = 110,
    AKEYCODE_ESCAPE          = 111,
    AKEYCODE_FORWARD_DEL     = 112,
    AKEYCODE_CTRL_LEFT       = 113,
    AKEYCODE_CTRL_RIGHT      = 114,
    AKEYCODE_CAPS_LOCK       = 115,
    AKEYCODE_SCROLL_LOCK     = 116,
    AKEYCODE_META_LEFT       = 117,
    AKEYCODE_META_RIGHT      = 118,
    AKEYCODE_FUNCTION        = 119,
    AKEYCODE_SYSRQ           = 120,
    AKEYCODE_BREAK           = 121,
    AKEYCODE_MOVE_HOME       = 122,
    AKEYCODE_MOVE_END        = 123,
    AKEYCODE_INSERT          = 124,
    AKEYCODE_FORWARD         = 125,
    AKEYCODE_MEDIA_PLAY      = 126,
    AKEYCODE_MEDIA_PAUSE     = 127,
    AKEYCODE_MEDIA_CLOSE     = 128,
    AKEYCODE_MEDIA_EJECT     = 129,
    AKEYCODE_MEDIA_RECORD    = 130,
    AKEYCODE_F1              = 131,
    AKEYCODE_F2              = 132,
    AKEYCODE_F3              = 133,
    AKEYCODE_F4              = 134,
    AKEYCODE_F5              = 135,
    AKEYCODE_F6              = 136,
    AKEYCODE_F7              = 137,
    AKEYCODE_F8              = 138,
    AKEYCODE_F9              = 139,
    AKEYCODE_F10             = 140,
    AKEYCODE_F11             = 141,
    AKEYCODE_F12             = 142,
    AKEYCODE_NUM_LOCK        = 143,
    AKEYCODE_NUMPAD_0        = 144,
    AKEYCODE_NUMPAD_1        = 145,
    AKEYCODE_NUMPAD_2        = 146,
    AKEYCODE_NUMPAD_3        = 147,
    AKEYCODE_NUMPAD_4        = 148,
    AKEYCODE_NUMPAD_5        = 149,
    AKEYCODE_NUMPAD_6        = 150,
    AKEYCODE_NUMPAD_7        = 151,
    AKEYCODE_NUMPAD_8        = 152,
    AKEYCODE_NUMPAD_9        = 153,
    AKEYCODE_NUMPAD_DIVIDE   = 154,
    AKEYCODE_NUMPAD_MULTIPLY = 155,
    AKEYCODE_NUMPAD_SUBTRACT = 156,
    AKEYCODE_NUMPAD_ADD      = 157,
    AKEYCODE_NUMPAD_DOT      = 158,
    AKEYCODE_NUMPAD_COMMA    = 159,
    AKEYCODE_NUMPAD_ENTER    = 160,
    AKEYCODE_NUMPAD_EQUALS   = 161,
    AKEYCODE_NUMPAD_LEFT_PAREN = 162,
    AKEYCODE_NUMPAD_RIGHT_PAREN = 163,
    AKEYCODE_VOLUME_MUTE     = 164,
    AKEYCODE_INFO            = 165,
    AKEYCODE_CHANNEL_UP      = 166,
    AKEYCODE_CHANNEL_DOWN    = 167,
    AKEYCODE_ZOOM_IN         = 168,
    AKEYCODE_ZOOM_OUT        = 169,
    AKEYCODE_TV              = 170,
    AKEYCODE_WINDOW          = 171,
    AKEYCODE_GUIDE           = 172,
    AKEYCODE_DVR             = 173,
    AKEYCODE_BOOKMARK        = 174,
    AKEYCODE_CAPTIONS        = 175,
    AKEYCODE_SETTINGS        = 176,
    AKEYCODE_TV_POWER        = 177,
    AKEYCODE_TV_INPUT        = 178,
    AKEYCODE_STB_POWER       = 179,
    AKEYCODE_STB_INPUT       = 180,
    AKEYCODE_AVR_POWER       = 181,
    AKEYCODE_AVR_INPUT       = 182,
    AKEYCODE_PROG_RED        = 183,
    AKEYCODE_PROG_GREEN      = 184,
    AKEYCODE_PROG_YELLOW     = 185,
    AKEYCODE_PROG_BLUE       = 186,
    AKEYCODE_APP_SWITCH      = 187,
    AKEYCODE_BUTTON_1        = 188,
    AKEYCODE_BUTTON_2        = 189,
    AKEYCODE_BUTTON_3        = 190,
    AKEYCODE_BUTTON_4        = 191,
    AKEYCODE_BUTTON_5        = 192,
    AKEYCODE_BUTTON_6        = 193,
    AKEYCODE_BUTTON_7        = 194,
    AKEYCODE_BUTTON_8        = 195,
    AKEYCODE_BUTTON_9        = 196,
    AKEYCODE_BUTTON_10       = 197,
    AKEYCODE_BUTTON_11       = 198,
    AKEYCODE_BUTTON_12       = 199,
    AKEYCODE_BUTTON_13       = 200,
    AKEYCODE_BUTTON_14       = 201,
    AKEYCODE_BUTTON_15       = 202,
    AKEYCODE_BUTTON_16       = 203,
    AKEYCODE_LANGUAGE_SWITCH = 204,
    AKEYCODE_MANNER_MODE     = 205,
    AKEYCODE_3D_MODE         = 206,
    AKEYCODE_CONTACTS        = 207,
    AKEYCODE_CALENDAR        = 208,
    AKEYCODE_MUSIC           = 209,
    AKEYCODE_CALCULATOR      = 210,
    AKEYCODE_ZENKAKU_HANKAKU = 211,
    AKEYCODE_EISU            = 212,
    AKEYCODE_MUHENKAN        = 213,
    AKEYCODE_HENKAN          = 214,
    AKEYCODE_KATAKANA_HIRAGANA = 215,
    AKEYCODE_YEN             = 216,
    AKEYCODE_RO              = 217,
    AKEYCODE_KANA            = 218,
    AKEYCODE_ASSIST          = 219,
    AKEYCODE_BRIGHTNESS_DOWN = 220,
    AKEYCODE_BRIGHTNESS_UP   = 221,
    AKEYCODE_MEDIA_AUDIO_TRACK = 222
}

enum : int {
    ANDROID_LOG_UNKNOWN = 0,
    ANDROID_LOG_DEFAULT,
    ANDROID_LOG_VERBOSE,
    ANDROID_LOG_DEBUG,
    ANDROID_LOG_INFO,
    ANDROID_LOG_WARN,
    ANDROID_LOG_ERROR,
    ANDROID_LOG_FATAL,
    ANDROID_LOG_SILENT
}
alias int android_LogPriority;

// looper.h
struct ALooper;
enum : int {
    ALOOPER_PREPARE_ALLOW_NON_CALLBACKS = 1<<0
}

enum : int {
    ALOOPER_POLL_WAKE = -1,
    ALOOPER_POLL_CALLBACK = -2,
    ALOOPER_POLL_TIMEOUT = -3,
    ALOOPER_POLL_ERROR = -4
}

enum : int {
    ALOOPER_EVENT_INPUT = 1 << 0,
    ALOOPER_EVENT_OUTPUT = 1 << 1,
    ALOOPER_EVENT_ERROR = 1 << 2,
    ALOOPER_EVENT_HANGUP = 1 << 3,
    ALOOPER_EVENT_INVALID = 1 << 4
}

extern( C ) nothrow alias ALooper_callbackFunc = int function (int fd, int events, void* data);

// native_activity.h
struct ANativeActivityCallbacks;

struct ANativeActivity {
    ANativeActivityCallbacks* callbacks;
    JavaVM* vm;
    JNIEnv* env;
    jobject clazz;
    const(char)* internalDataPath;
    const(char)* externalDataPath;
    int32_t sdkVersion;
    void* instance;
    AAssetManager* assetManager;
    const(char)* obbPath;
}

// TODO
struct ANativeActivityCallbacks {
    void (*onStart)(ANativeActivity* activity);
    void (*onResume)(ANativeActivity* activity);
    void* (*onSaveInstanceState)(ANativeActivity* activity, size_t* outSize);
    void (*onPause)(ANativeActivity* activity);
    void (*onStop)(ANativeActivity* activity);
    void (*onDestroy)(ANativeActivity* activity);
    void (*onWindowFocusChanged)(ANativeActivity* activity, int hasFocus);
    void (*onNativeWindowCreated)(ANativeActivity* activity, ANativeWindow* window);
    void (*onNativeWindowResized)(ANativeActivity* activity, ANativeWindow* window);
    void (*onNativeWindowRedrawNeeded)(ANativeActivity* activity, ANativeWindow* window);
    void (*onNativeWindowDestroyed)(ANativeActivity* activity, ANativeWindow* window);
    void (*onInputQueueCreated)(ANativeActivity* activity, AInputQueue* queue);
    void (*onInputQueueDestroyed)(ANativeActivity* activity, AInputQueue* queue);
    void (*onContentRectChanged)(ANativeActivity* activity, const ARect* rect);
    void (*onConfigurationChanged)(ANativeActivity* activity);
    void (*onLowMemory)(ANativeActivity* activity);
}

typedef void ANativeActivity_createFunc(ANativeActivity* activity,
        void* savedState, size_t savedStateSize);

enum : int {
    ANATIVEACTIVITY_SHOW_SOFT_INPUT_IMPLICIT = 0x0001,
    ANATIVEACTIVITY_SHOW_SOFT_INPUT_FORCED = 0x0002
}

enum : int {
    ANATIVEACTIVITY_HIDE_SOFT_INPUT_IMPLICIT_ONLY = 0x0001,
    ANATIVEACTIVITY_HIDE_SOFT_INPUT_NOT_ALWAYS = 0x0002
}

// native_window.h
enum : int {
    WINDOW_FORMAT_RGBA_8888          = 1,
    WINDOW_FORMAT_RGBX_8888          = 2,
    WINDOW_FORMAT_RGB_565            = 4
}

struct ANativeWindow;

struct ANativeWindow_Buffer {
    int32_t width;
    int32_t height;
    int32_t stride;
    int32_t format;
    void* bits;
    uint32_t reserved[6];
}

// obb.h
struct AObbInfo;

enum : int {
    AOBBINFO_OVERLAY = 0x0001
}

// rect.h
struct ARect {
    int32_t left;
    int32_t top;
    int32_t right;
    int32_t bottom;
}

// sensor.h
enum : int {
    ASENSOR_TYPE_ACCELEROMETER      = 1,
    ASENSOR_TYPE_MAGNETIC_FIELD     = 2,
    ASENSOR_TYPE_GYROSCOPE          = 4,
    ASENSOR_TYPE_LIGHT              = 5,
    ASENSOR_TYPE_PROXIMITY          = 8
}

enum : int {
    ASENSOR_STATUS_UNRELIABLE       = 0,
    ASENSOR_STATUS_ACCURACY_LOW     = 1,
    ASENSOR_STATUS_ACCURACY_MEDIUM  = 2,
    ASENSOR_STATUS_ACCURACY_HIGH    = 3
}

static immutable float ASENSOR_STANDARD_GRAVITY            = (9.80665f);
static immutable float ASENSOR_MAGNETIC_FIELD_EARTH_MAX    = (60.0f);
static immutable float ASENSOR_MAGNETIC_FIELD_EARTH_MIN    = (30.0f);

struct ASensorVector {
    union {
        float v[3];
        struct {
            float x;
            float y;
            float z;
        };
        struct {
            float azimuth;
            float pitch;
            float roll;
        };
    };
    int8_t status;
    uint8_t reserved[3];
}

struct AMetaDataEvent {
    int32_t what;
    int32_t sensor;
}

struct AUncalibratedEvent {
  union {
    float uncalib[3];
    struct {
      float x_uncalib;
      float y_uncalib;
      float z_uncalib;
    };
  };
  union {
    float bias[3];
    struct {
      float x_bias;
      float y_bias;
      float z_bias;
    };
  };
}

struct ASensorEvent {
    int32_t version_;
    int32_t sensor;
    int32_t type;
    int32_t reserved0;
    int64_t timestamp;
    union {
        union {
            float           data[16];
            ASensorVector   vector;
            ASensorVector   acceleration;
            ASensorVector   magnetic;
            float           temperature;
            float           distance;
            float           light;
            float           pressure;
            float           relative_humidity;
            AUncalibratedEvent uncalibrated_gyro;
            AUncalibratedEvent uncalibrated_magnetic;
            AMetaDataEvent meta_data;
        }
        union u64 {
            uint64_t        data[8];
            uint64_t        step_counter;
        }
    }
    int32_t reserved1[4];
}

struct ASensorManager;
struct ASensorEventQueue;
struct ASensor;
alias ASensorRef = const(ASensor);
alias ASensorList = const(ASensorRef);

// storage_manager.h
struct AStorageManager;

enum : int {
    AOBB_STATE_MOUNTED = 1,
    AOBB_STATE_UNMOUNTED = 2,
    AOBB_STATE_ERROR_INTERNAL = 20,
    AOBB_STATE_ERROR_COULD_NOT_MOUNT = 21,
    AOBB_STATE_ERROR_COULD_NOT_UNMOUNT = 22,
    AOBB_STATE_ERROR_NOT_MOUNTED = 23,
    AOBB_STATE_ERROR_ALREADY_MOUNTED = 24,
    AOBB_STATE_ERROR_PERMISSION_DENIED = 25
}

extern( C ) nothrow alias AStorageManager_obbCallbackFunc = void function(const(char)* filename, const int32_t state, void* data);

// window.h
enum : int {
    AWINDOW_FLAG_ALLOW_LOCK_WHILE_SCREEN_ON = 0x00000001,
    AWINDOW_FLAG_DIM_BEHIND                 = 0x00000002,
    AWINDOW_FLAG_BLUR_BEHIND                = 0x00000004,
    AWINDOW_FLAG_NOT_FOCUSABLE              = 0x00000008,
    AWINDOW_FLAG_NOT_TOUCHABLE              = 0x00000010,
    AWINDOW_FLAG_NOT_TOUCH_MODAL            = 0x00000020,
    AWINDOW_FLAG_TOUCHABLE_WHEN_WAKING      = 0x00000040,
    AWINDOW_FLAG_KEEP_SCREEN_ON             = 0x00000080,
    AWINDOW_FLAG_LAYOUT_IN_SCREEN           = 0x00000100,
    AWINDOW_FLAG_LAYOUT_NO_LIMITS           = 0x00000200,
    AWINDOW_FLAG_FULLSCREEN                 = 0x00000400,
    AWINDOW_FLAG_FORCE_NOT_FULLSCREEN       = 0x00000800,
    AWINDOW_FLAG_DITHER                     = 0x00001000,
    AWINDOW_FLAG_SECURE                     = 0x00002000,
    AWINDOW_FLAG_SCALED                     = 0x00004000,
    AWINDOW_FLAG_IGNORE_CHEEK_PRESSES       = 0x00008000,
    AWINDOW_FLAG_LAYOUT_INSET_DECOR         = 0x00010000,
    AWINDOW_FLAG_ALT_FOCUSABLE_IM           = 0x00020000,
    AWINDOW_FLAG_WATCH_OUTSIDE_TOUCH        = 0x00040000,
    AWINDOW_FLAG_SHOW_WHEN_LOCKED           = 0x00080000,
    AWINDOW_FLAG_SHOW_WALLPAPER             = 0x00100000,
    AWINDOW_FLAG_TURN_SCREEN_ON             = 0x00200000,
    AWINDOW_FLAG_DISMISS_KEYGUARD           = 0x00400000,
}
