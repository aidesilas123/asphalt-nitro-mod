package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import com.json.k2;

/* JADX INFO: compiled from: PAGNetworkTools.java */
/* JADX INFO: loaded from: classes2.dex */
public class q {
    public static String a(Context context) {
        int iA = com.bytedance.sdk.component.utils.v.a(context, 0L);
        return iA != 2 ? iA != 3 ? iA != 4 ? iA != 5 ? iA != 6 ? "mobile" : "5g" : "4g" : k2.b : k2.a : "2g";
    }
}
