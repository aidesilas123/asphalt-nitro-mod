package com.applovin.sdk;

import android.content.Context;
import com.applovin.impl.sdk.x;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinPrivacySettings {
    public static boolean hasUserConsent(Context context) {
        x.D("AppLovinPrivacySettings", "hasUserConsent()");
        Boolean boolB = com.applovin.impl.privacy.a.zP().B(context);
        if (boolB != null) {
            return boolB.booleanValue();
        }
        return false;
    }

    public static boolean isAgeRestrictedUser(Context context) {
        x.D("AppLovinPrivacySettings", "isAgeRestrictedUser()");
        Boolean boolB = com.applovin.impl.privacy.a.zO().B(context);
        if (boolB != null) {
            return boolB.booleanValue();
        }
        return false;
    }

    public static boolean isAgeRestrictedUserSet(Context context) {
        x.D("AppLovinPrivacySettings", "isAgeRestrictedUserSet()");
        return com.applovin.impl.privacy.a.zO().B(context) != null;
    }

    public static boolean isDoNotSell(Context context) {
        x.D("AppLovinPrivacySettings", "isDoNotSell()");
        Boolean boolB = com.applovin.impl.privacy.a.zQ().B(context);
        if (boolB != null) {
            return boolB.booleanValue();
        }
        return false;
    }

    public static boolean isDoNotSellSet(Context context) {
        x.D("AppLovinPrivacySettings", "isDoNotSellSet()");
        return com.applovin.impl.privacy.a.zQ().B(context) != null;
    }

    public static boolean isUserConsentSet(Context context) {
        x.D("AppLovinPrivacySettings", "isUserConsentSet()");
        return com.applovin.impl.privacy.a.zP().B(context) != null;
    }

    public static void setDoNotSell(boolean z, Context context) {
        x.D("AppLovinPrivacySettings", "setDoNotSell()");
        if (com.applovin.impl.privacy.a.c(z, context)) {
            AppLovinSdk.reinitializeAll(null, null, Boolean.valueOf(z));
        }
    }

    public static void setHasUserConsent(boolean z, Context context) {
        x.D("AppLovinPrivacySettings", "setHasUserConsent()");
        if (com.applovin.impl.privacy.a.b(z, context)) {
            AppLovinSdk.reinitializeAll(Boolean.valueOf(z), null, null);
        }
    }

    public static void setIsAgeRestrictedUser(boolean z, Context context) {
        x.D("AppLovinPrivacySettings", "setIsAgeRestrictedUser()");
        if (com.applovin.impl.privacy.a.a(z, context)) {
            AppLovinSdk.reinitializeAll(null, Boolean.valueOf(z), null);
        }
    }
}
