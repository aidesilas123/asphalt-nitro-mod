package com.json.mediationsdk.config;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigFile {
    private static ConfigFile a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String[] f6252e = {"AdobeAir", "Cocos2dx", "Cordova", "Corona", "Defold", "Flutter", "ReactNative", "Unity", "Unreal", "Xamarin", "Other"};

    public static synchronized ConfigFile getConfigFile() {
        if (a == null) {
            a = new ConfigFile();
        }
        return a;
    }

    public String getPluginFrameworkVersion() {
        return this.f6251d;
    }

    public String getPluginType() {
        return this.b;
    }

    public String getPluginVersion() {
        return this.c;
    }

    public void setPluginData(String str, String str2, String str3) {
        this.b = null;
        if (str != null) {
            String[] strArr = this.f6252e;
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                String str4 = strArr[i];
                if (str.equalsIgnoreCase(str4)) {
                    this.b = str4;
                    break;
                }
                i++;
            }
        }
        if (str2 != null) {
            this.c = str2;
        }
        if (str3 != null) {
            this.f6251d = str3;
        }
    }
}
