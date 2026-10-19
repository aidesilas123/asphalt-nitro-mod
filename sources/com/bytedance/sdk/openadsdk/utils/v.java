package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;

/* JADX INFO: compiled from: SlotUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class v {
    public static boolean a(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        int iAS;
        return (qVar == null || (iAS = qVar.aS()) == 8 || iAS == 7 || qVar.I() == null || Build.VERSION.SDK_INT > 27) ? false : true;
    }
}
