package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.l;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;

/* JADX INFO: compiled from: MultiGlobalInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static Boolean a;

    public static void a() {
        Boolean bool = Boolean.TRUE;
        a = bool;
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_info", "is_support_multi_process", bool);
    }

    public static void b() {
        a = Boolean.FALSE;
        BinderPoolService.a = true;
    }

    public static boolean c() {
        Boolean bool = a;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (!l.e()) {
            return false;
        }
        if (a == null) {
            a = Boolean.valueOf(com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_info", "is_support_multi_process", false));
        }
        return a.booleanValue();
    }
}
