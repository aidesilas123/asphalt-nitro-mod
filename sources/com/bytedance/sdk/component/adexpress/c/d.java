package com.bytedance.sdk.component.adexpress.c;

import android.text.TextUtils;

/* JADX INFO: compiled from: RitScreenUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class d {
    public static boolean a(String str) {
        return TextUtils.equals(str, "fullscreen_interstitial_ad") || TextUtils.equals(str, "rewarded_video");
    }

    public static boolean b(String str) {
        return com.bytedance.sdk.component.adexpress.d.b() && a(str);
    }
}
