package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: compiled from: ResourceUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class t {
    public static int a(Context context, String str, String str2) {
        String packageName = "";
        try {
            try {
                packageName = com.mbridge.msdk.foundation.controller.b.d().b();
            } catch (Exception unused) {
                aa.d("ResourceUtil", "MBSDKContext.getInstance() is null resName:" + str);
            }
            if (ak.a(packageName) && context != null) {
                packageName = context.getPackageName();
            }
            if (ak.a(packageName) || context == null) {
                return -1;
            }
            return context.getResources().getIdentifier(str, str2, packageName);
        } catch (Exception unused2) {
            aa.d("ResourceUtil", "Resource not found resName:" + str);
            return -1;
        }
    }

    public static Resources a(Context context) {
        if (context != null) {
            try {
                return context.getResources();
            } catch (Exception e2) {
                aa.d("ResourceUtil", "Resource error:" + e2.getMessage());
            }
        }
        return null;
    }
}
