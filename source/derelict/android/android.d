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
module derelict.android.android;

public {
    import derelict.android.types;
    import derelict.android.functions;
}

private {
    import derelict.util.loader;
    import derelict.util.system;

    static assert( Derelict_OS_Android );

    enum libNames = "android.so";
}

class DerelictAndroidLoader : SharedLibLoader {
    public this() {
        super( libNames );
    }

    protected override void loadSymbols() {
        bindFunc( cast( void** )&AAssetManager_openDir, "AAssetManager_openDir" );
        bindFunc( cast( void** )&AAssetManager_open, "AAssetManager_open" );
        bindFunc( cast( void** )&AAssetDir_getNextFileName, "AAssetDir_getNextFileName" );
        bindFunc( cast( void** )&AAssetDir_rewind, "AAssetDir_rewind" );
        bindFunc( cast( void** )&AAssetDir_close, "AAssetDir_close" );
        bindFunc( cast( void** )&AAsset_read, "AAsset_read" );
        bindFunc( cast( void** )&AAsset_seek, "AAsset_seek" );
        bindFunc( cast( void** )&AAsset_seek64, "AAsset_seek64" );
        bindFunc( cast( void** )&AAsset_close, "AAsset_close" );
        bindFunc( cast( void** )&AAsset_getLength, "AAsset_getLength" );
        bindFunc( cast( void** )&AAsset_getLength64, "AAsset_getLength64" );
        bindFunc( cast( void** )&AAsset_getRemainingLength, "AAsset_getRemainingLength" );
        bindFunc( cast( void** )&AAsset_getRemainingLength64, "AAsset_getRemainingLength64" );
        bindFunc( cast( void** )&AAsset_openFileDescriptor, "AAsset_openFileDescriptor" );
        bindFunc( cast( void** )&AAsset_openFileDescriptor64, "AAsset_openFileDescriptor64" );
        bindFunc( cast( void** )&AAsset_isAllocated, "AAsset_isAllocated" );
        bindFunc( cast( void** )&AConfiguration_new, "AConfiguration_new" );
        bindFunc( cast( void** )&AConfiguration_delete, "AConfiguration_delete" );
        bindFunc( cast( void** )&AConfiguration_fromAssetManager, "AConfiguration_fromAssetManager" );
        bindFunc( cast( void** )&AConfiguration_copy, "AConfiguration_copy" );
        bindFunc( cast( void** )&AConfiguration_getMcc, "AConfiguration_getMcc" );
        bindFunc( cast( void** )&AConfiguration_setMcc, "AConfiguration_setMcc" );
        bindFunc( cast( void** )&AConfiguration_getMnc, "AConfiguration_getMnc" );
        bindFunc( cast( void** )&AConfiguration_setMnc, "AConfiguration_setMnc" );
        bindFunc( cast( void** )&AConfiguration_getLanguage, "AConfiguration_getLanguage" );
        bindFunc( cast( void** )&AConfiguration_setLanguage, "AConfiguration_setLanguage" );
        bindFunc( cast( void** )&AConfiguration_getCountry, "AConfiguration_getCountry" );
        bindFunc( cast( void** )&AConfiguration_setCountry, "AConfiguration_setCountry" );
        bindFunc( cast( void** )&AConfiguration_getOrientation, "AConfiguration_getOrientation" );
        bindFunc( cast( void** )&AConfiguration_setOrientation, "AConfiguration_setOrientation" );
        bindFunc( cast( void** )&AConfiguration_getTouchscreen, "AConfiguration_getTouchscreen" );
        bindFunc( cast( void** )&AConfiguration_setTouchscreen, "AConfiguration_setTouchscreen" );
        bindFunc( cast( void** )&AConfiguration_getDensity, "AConfiguration_getDensity" );
        bindFunc( cast( void** )&AConfiguration_setDensity, "AConfiguration_setDensity" );
        bindFunc( cast( void** )&AConfiguration_getKeyboard, "AConfiguration_getKeyboard" );
        bindFunc( cast( void** )&AConfiguration_setKeyboard, "AConfiguration_setKeyboard" );
        bindFunc( cast( void** )&AConfiguration_getNavigation, "AConfiguration_getNavigation" );
        bindFunc( cast( void** )&AConfiguration_setNavigation, "AConfiguration_setNavigation" );
        bindFunc( cast( void** )&AConfiguration_getKeysHidden, "AConfiguration_getKeysHidden" );
        bindFunc( cast( void** )&AConfiguration_setKeysHidden, "AConfiguration_setKeysHidden" );
        bindFunc( cast( void** )&AConfiguration_getNavHidden, "AConfiguration_getNavHidden" );
        bindFunc( cast( void** )&AConfiguration_setNavHidden, "AConfiguration_setNavHidden" );
        bindFunc( cast( void** )&AConfiguration_getSdkVersion, "AConfiguration_getSdkVersion" );
        bindFunc( cast( void** )&AConfiguration_setSdkVersion, "AConfiguration_setSdkVersion" );
        bindFunc( cast( void** )&AConfiguration_getScreenSize, "AConfiguration_getScreenSize" );
        bindFunc( cast( void** )&AConfiguration_setScreenSize, "AConfiguration_setScreenSize" );
        bindFunc( cast( void** )&AConfiguration_getScreenLong, "AConfiguration_getScreenLong" );
        bindFunc( cast( void** )&AConfiguration_setScreenLong, "AConfiguration_setScreenLong" );
        bindFunc( cast( void** )&AConfiguration_getUiModeType, "AConfiguration_getUiModeType" );
        bindFunc( cast( void** )&AConfiguration_setUiModeType, "AConfiguration_setUiModeType" );
        bindFunc( cast( void** )&AConfiguration_getUiModeNight, "AConfiguration_getUiModeNight" );
        bindFunc( cast( void** )&AConfiguration_setUiModeNight, "AConfiguration_setUiModeNight" );
        bindFunc( cast( void** )&AConfiguration_getScreenWidthDp, "AConfiguration_getScreenWidthDp" );
        bindFunc( cast( void** )&AConfiguration_setScreenWidthDp, "AConfiguration_setScreenWidthDp" );
        bindFunc( cast( void** )&AConfiguration_getScreenHeightDp, "AConfiguration_getScreenHeightDp" );
        bindFunc( cast( void** )&AConfiguration_setScreenHeightDp, "AConfiguration_setScreenHeightDp" );
        bindFunc( cast( void** )&AConfiguration_getSmallestScreenWidthDp, "AConfiguration_getSmallestScreenWidthDp" );
        bindFunc( cast( void** )&AConfiguration_setSmallestScreenWidthDp, "AConfiguration_setSmallestScreenWidthDp" );
        bindFunc( cast( void** )&AConfiguration_getLayoutDirection, "AConfiguration_getLayoutDirection" );
        bindFunc( cast( void** )&AConfiguration_setLayoutDirection, "AConfiguration_setLayoutDirection" );
        bindFunc( cast( void** )&AConfiguration_diff, "AConfiguration_diff" );
        bindFunc( cast( void** )&AConfiguration_match, "AConfiguration_match" );
        bindFunc( cast( void** )&AConfiguration_isBetterThan, "AConfiguration_isBetterThan" );
        bindFunc( cast( void** )&AObbScanner_getObbInfo, "AObbScanner_getObbInfo" );
        bindFunc( cast( void** )&AObbInfo_delete, "AObbInfo_delete" );
        bindFunc( cast( void** )&AObbInfo_getPackageName, "AObbInfo_getPackageName" );
        bindFunc( cast( void** )&AObbInfo_getVersion, "AObbInfo_getVersion" );
        bindFunc( cast( void** )&AObbInfo_getFlags, "AObbInfo_getFlags" );
        bindFunc( cast( void** )&ASensorManager_getInstance, "ASensorManager_getInstance" );
        bindFunc( cast( void** )&ASensorManager_getSensorList, "ASensorManager_getSensorList" );
        bindFunc( cast( void** )&ASensorManager_getDefaultSensor, "ASensorManager_getDefaultSensor" );
        bindFunc( cast( void** )&ASensorEventQueue_enableSensor, "ASensorEventQueue_enableSensor" );
        bindFunc( cast( void** )&ASensorEventQueue_disableSensor, "ASensorEventQueue_disableSensor" );
        bindFunc( cast( void** )&ASensorEventQueue_setEventRate, "ASensorEventQueue_setEventRate" );
        bindFunc( cast( void** )&ASensorEventQueue_hasEvents, "ASensorEventQueue_hasEvents" );
        bindFunc( cast( void** )&ASensorEventQueue_getEvents, "ASensorEventQueue_getEvents" );
        bindFunc( cast( void** )&ASensor_getName, "ASensor_getName" );
        bindFunc( cast( void** )&ASensor_getVendor, "ASensor_getVendor" );
        bindFunc( cast( void** )&ASensor_getType, "ASensor_getType" );
        bindFunc( cast( void** )&ASensor_getResolution, "ASensor_getResolution" );
        bindFunc( cast( void** )&ASensor_getMinDelay, "ASensor_getMinDelay" );
        bindFunc( cast( void** )&AStorageManager_new, "AStorageManager_new" );
        bindFunc( cast( void** )&AStorageManager_delete, "AStorageManager_delete" );
        bindFunc( cast( void** )&AStorageManager_mountObb, "AStorageManager_mountObb" );
        bindFunc( cast( void** )&AStorageManager_unmountObb, "AStorageManager_unmountObb" );
        bindFunc( cast( void** )&AStorageManager_isObbMounted, "AStorageManager_isObbMounted" );
        bindFunc( cast( void** )&AStorageManager_getMountedObbPath, "AStorageManager_getMountedObbPath" );
    }
}

__gshared DerelictAndroidLoader DerelictAndroid;

shared static this() {
    DerelictAndroid = new DerelictAndroidLoader();
}
