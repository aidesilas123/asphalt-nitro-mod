package com.bytedance.sdk.openadsdk.core.nativeexpress;

import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: ExpressEventManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {
    private static int a(String str) {
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return 1;
            case "rewarded_video":
                return 7;
            case "open_ad":
                return 3;
            case "fullscreen_interstitial_ad":
                return 8;
            case "interaction":
                return 2;
            default:
                return 5;
        }
    }

    public static void a(int i, String str, String str2, q qVar) {
        com.bytedance.sdk.openadsdk.j.b.a().a(com.bytedance.sdk.openadsdk.j.a.b.b().a(a(str)).c(str2).e(qVar != null ? qVar.bc() : "").b(i).f(com.bytedance.sdk.openadsdk.core.g.a(i)));
    }
}
