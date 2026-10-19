package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: compiled from: DomainSameTool.java */
/* JADX INFO: loaded from: classes4.dex */
public class j {
    private static String a = "DomainSameTool";

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        try {
            Resources resources = context.getResources();
            return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android")) > 0;
        } catch (Throwable th) {
            aa.b(a, th.getMessage(), th);
            return false;
        }
    }
}
