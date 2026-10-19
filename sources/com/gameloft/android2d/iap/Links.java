package com.gameloft.android2d.iap;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Links {
    public static boolean IAP_FederationIsInitialized() {
        return NIAP_FederationIsInitialized();
    }

    public static String IAP_GetAccessToken() {
        String accessToken = IAPLib.getAccessToken();
        return (accessToken == null || accessToken.equals("")) ? NIAP_GetAccessToken() : accessToken;
    }

    public static String IAP_GetAnonymousCredential() {
        return NIAP_GetAnonymousCredential();
    }

    public static JSONObject IAP_GetCRMFeed() {
        try {
            return new JSONObject(NIAP_GetCRMFeed());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String IAP_GetCRMUrl() {
        return NIAP_GetCRMUrl();
    }

    public static String IAP_GetClientId() {
        return NIAP_GetClientId();
    }

    public static String IAP_GetDatacenter() {
        return NIAP_GetDatacenter();
    }

    public static String IAP_GetDeviceId() {
        return NIAP_GetDeviceId();
    }

    public static String IAP_GetImageUrl(String str) {
        return null;
    }

    public static String IAP_GetLastResponseTimestamp() {
        return NIAP_GetLastResponseTimestamp();
    }

    public static String IAP_GetProjectId() {
        return null;
    }

    public static String IAP_GetUserCredential() {
        return NIAP_GetUserCredential();
    }

    public static String IAP_GetUserName() {
        return IAPLib.getUserName();
    }

    public static boolean IAP_IsFederationOffline() {
        return NIAP_IsFederationOffline();
    }

    public static native boolean NIAP_FederationIsInitialized();

    public static native String NIAP_GetAccessToken();

    public static native String NIAP_GetAnonymousCredential();

    public static native String NIAP_GetCRMFeed();

    public static native String NIAP_GetCRMUrl();

    public static native String NIAP_GetClientId();

    public static native String NIAP_GetDatacenter();

    public static native String NIAP_GetDeviceId();

    public static native String NIAP_GetLastResponseTimestamp();

    public static native String NIAP_GetUserCredential();

    public static native boolean NIAP_IsFederationOffline();
}
