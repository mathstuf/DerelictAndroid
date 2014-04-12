DerelictAndroid
===============

Dynamic bindings to the [Android NDK](https://developer.android.com/tools/sdk/ndk/index.html) version r9d for the D Programming Language.

For information on how to build DerelictAndroid and link it with your programs, please see the post [Building and Using Packages in DerelictOrg](http://dblog.aldacron.net/forum/index.php?topic=841.0) at the Derelict forums.

For information on how to load the Android libraries via DerelictAndroid, see the page [DerelictUtil for Users](https://github.com/DerelictOrg/DerelictUtil/wiki/DerelictUtil-for-Users) at the DerelictUtil Wiki. In the meantime, here's some sample code.

```D
// This example shows how to import all of the DerelictAndroid bindings. Of course,
// you only need to import the modules that correspond to the libraries you
// actually need to load.
import derelict.android.android;

void main() {
    // Load the android library.
    DerelictAndroid.load();

    // Now Android functions for all of the Android headers can be called.
    ...
}
```
