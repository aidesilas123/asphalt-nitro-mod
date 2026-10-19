package com.kidoz.sdk.api.general.utils;

/* JADX INFO: loaded from: classes4.dex */
public final class ConstantDef {
    public static boolean DGM = false;
    public static String EXTENSION_TYPE = "none";
    public static int EXTENSION_TYPE_ADOBE_AIR = 4;
    public static int EXTENSION_TYPE_ANDROID = 1;
    public static int EXTENSION_TYPE_COCOS_DX = 3;
    public static int EXTENSION_TYPE_CORONA = 7;
    public static int EXTENSION_TYPE_ECLIPSE = 2;
    public static int EXTENSION_TYPE_GMS = 6;
    public static int EXTENSION_TYPE_NONE = 0;
    public static int EXTENSION_TYPE_UNITY = 5;
    public static int EXTENSION_TYPE_X_CODE = 8;
    public static String EXTENSION_VERSION = "none";
    public static final String OM_PARTNER_NAME = "kidoznet";
    public static final String SDK_CONTENT_VERSION = "4";
    private static final String SDK_FLAVOR = "androidNative";
    public static final String SDK_VERSION = "9.0.1";
    public static final String TEMPORARY_SDK_SD_FOLDER_NAME = "KsdkTemp";

    public static boolean isMultiEnv() {
        return false;
    }

    public static boolean isTestApp() {
        return false;
    }

    public static void setDGM(boolean z) {
        DGM = z;
        SDKLogger.IS_DEBUG_MODE = z;
    }
}
