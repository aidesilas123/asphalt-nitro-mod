package com.bytedance.sdk.openadsdk.utils;

import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;

/* JADX INFO: compiled from: NetUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class o {
    public static void a(SSWebView sSWebView, String str) {
        HashMap map = new HashMap();
        map.put("Referer", TTAdConstant.REQUEST_HEAD_REFERER);
        sSWebView.a(str, map);
    }
}
