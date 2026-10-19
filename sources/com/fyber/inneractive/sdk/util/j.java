package com.fyber.inneractive.sdk.util;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Build;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes2.dex */
public class j extends l {
    public static final /* synthetic */ int b = 0;

    public static boolean a(Intent intent) {
        int size;
        try {
            size = l.a.getPackageManager().queryIntentActivities(intent, 0).size();
        } catch (Throwable unused) {
            size = 0;
        }
        return size > 0;
    }

    public static String g() {
        try {
            return ((TelephonyManager) l.a.getSystemService("phone")).getNetworkCountryIso();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String h() {
        return Build.MANUFACTURER + " " + Build.MODEL;
    }

    @SuppressLint({"MissingPermission"})
    public static int i() {
        try {
            if (!l.b("android.permission.READ_PHONE_STATE")) {
                return 0;
            }
            TelephonyManager telephonyManager = (TelephonyManager) l.a.getSystemService("phone");
            return Build.VERSION.SDK_INT >= 24 ? telephonyManager.getDataNetworkType() : telephonyManager.getNetworkType();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static String j() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) l.a.getSystemService("phone");
            String networkOperator = telephonyManager.getNetworkOperator();
            if (telephonyManager.getPhoneType() != 2) {
                return networkOperator;
            }
            TelephonyManager telephonyManager2 = (TelephonyManager) l.a.getSystemService("phone");
            return telephonyManager2 != null && telephonyManager2.getSimState() == 5 ? telephonyManager.getSimOperator() : networkOperator;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String k() {
        return l.a.getPackageName();
    }

    public static String l() {
        try {
            return l.a.getPackageManager().getPackageInfo(l.a.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean m() {
        return "mounted".equals(l.b()) && l.a.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static boolean n() {
        return (l.a.getResources().getConfiguration().screenLayout & 15) == 4;
    }
}
