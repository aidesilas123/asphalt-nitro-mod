package com.bytedance.sdk.component.adexpress.c;

import android.text.TextUtils;

/* JADX INFO: compiled from: GlobalAdTypeUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    public static boolean a(String str) {
        return com.bytedance.sdk.component.adexpress.d.b() && (TextUtils.equals(str, "embeded_ad") || TextUtils.equals(str, "banner_ad"));
    }
}
