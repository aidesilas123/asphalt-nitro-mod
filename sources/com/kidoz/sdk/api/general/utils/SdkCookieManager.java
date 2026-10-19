package com.kidoz.sdk.api.general.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public class SdkCookieManager {
    private static final String APP_STORAGE = "app";
    private static final String SESSION_STORAGE = "session";
    public static final String TAG = "SdkCookieManager";
    private static final String WIDGET_STORAGE = "widget";
    private static SdkCookieManager instance;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.general.utils.SdkCookieManager$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$utils$StorageLife;

        static {
            int[] iArr = new int[StorageLife.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$utils$StorageLife = iArr;
            try {
                iArr[StorageLife.APP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$utils$StorageLife[StorageLife.SESSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$utils$StorageLife[StorageLife.WIDGET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static SdkCookieManager getInstance() {
        SdkCookieManager sdkCookieManager;
        SdkCookieManager sdkCookieManager2 = instance;
        if (sdkCookieManager2 != null) {
            return sdkCookieManager2;
        }
        synchronized (SdkCookieManager.class) {
            if (instance == null) {
                instance = new SdkCookieManager();
            }
            sdkCookieManager = instance;
        }
        return sdkCookieManager;
    }

    private static String getSharedPreferenceName(String str, StorageLife storageLife) {
        int i = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$general$utils$StorageLife[storageLife.ordinal()];
        if (i == 1) {
            return "app";
        }
        if (i == 2) {
            return SESSION_STORAGE;
        }
        if (i != 3) {
            return null;
        }
        return str + WIDGET_STORAGE;
    }

    public static String loadData(Context context, String str, String str2, String str3) {
        String string;
        synchronized (SdkCookieManager.class) {
            try {
                try {
                    String strSHA1 = EncoderUtils.SHA1(str2 + str3);
                    string = context.getSharedPreferences(getSharedPreferenceName(str, StorageLife.WIDGET), 0).getString(strSHA1, null);
                    if (string == null && (string = context.getSharedPreferences(getSharedPreferenceName(str, StorageLife.SESSION), 0).getString(strSHA1, null)) == null) {
                        string = context.getSharedPreferences(getSharedPreferenceName(str, StorageLife.APP), 0).getString(strSHA1, null);
                    }
                } catch (Exception e2) {
                    SDKLogger.printErrorLog(TAG, "Error when trying to load data to cookie \n" + e2.getMessage());
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return string;
    }

    public static void resetStorage(Context context, String str, StorageLife storageLife) {
        synchronized (SdkCookieManager.class) {
            try {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(getSharedPreferenceName(str, storageLife), 0).edit();
                editorEdit.clear();
                editorEdit.apply();
            } catch (Exception e2) {
                SDKLogger.printErrorLog(TAG, "Error when trying to reset  cookie \n" + e2.getMessage());
            }
        }
    }

    public static void saveData(Context context, String str, String str2, String str3, String str4, StorageLife storageLife) {
        synchronized (SdkCookieManager.class) {
            try {
                String strSHA1 = EncoderUtils.SHA1(str2 + str3);
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(getSharedPreferenceName(str, storageLife), 0).edit();
                editorEdit.putString(strSHA1, str4);
                editorEdit.apply();
            } catch (Exception e2) {
                SDKLogger.printErrorLog(TAG, "Error when trying to save data to cookie \n" + e2.getMessage());
            }
        }
    }
}
