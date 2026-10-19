package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: compiled from: TTAppInfoUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class u {
    private static volatile String a;

    public static String a() {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        a = Build.MODEL;
        return a;
    }
}
