package com.bytedance.sdk.component.adexpress.c;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: compiled from: DeviceUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        return (Build.VERSION.SDK_INT >= 17 && TextUtils.getLayoutDirectionFromLocale(context.getResources().getConfiguration().locale) == 1) && (context.getApplicationInfo().flags & 4194304) == 4194304;
    }
}
