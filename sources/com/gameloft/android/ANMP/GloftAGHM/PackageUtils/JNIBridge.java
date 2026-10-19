package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.view.Surface;

/* JADX INFO: loaded from: classes2.dex */
public class JNIBridge {
    public static native void InGameBrowserCheckRewardCallback(String str, boolean z);

    public static native void InGameBrowserExitCallback();

    public static native void NativeAudioFocusChanged(boolean z);

    public static native void NativeInit();

    public static native void NativeKeyAction(int i, boolean z);

    public static native void NativeOnPause();

    public static native void NativeOnResume();

    public static native void NativeOnTouch(int i, float f2, float f3, int i2);

    public static native void NativeSendKeyboardData(String str);

    public static native void NativeSetActivityContainer(Activity activity);

    public static native void NativeSurfaceChanged(Surface surface, int i, int i2);

    public static native void NativeUserMusicIsPlaying(boolean z);

    public static native void NativeVolumeAction(boolean z);

    public static native void NotifyLowBattery();

    public static native void NotifyTrimMemory(int i);

    public static native void SetBatteryInfo(boolean z, boolean z2, boolean z3, int i);

    public static native void SetConnectionType(int i);

    public static native void SetUserLocation(int i, double d2, double d3, float f2, String str);

    public static native void SetWifiScannerResult(int i, String str);
}
