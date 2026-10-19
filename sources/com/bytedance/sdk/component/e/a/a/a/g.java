package com.bytedance.sdk.component.e.a.a.a;

import com.bytedance.sdk.component.e.a.i;

/* JADX INFO: compiled from: TTPathConst.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static String a = "com.bytedance.openadsdk";
    public static String b = "content://" + a + ".TTMultiProvider";

    static {
        a();
    }

    public static void a() {
        if (i.g().f() != null) {
            a = i.g().f().getPackageName();
            b = "content://" + a + ".TTMultiProvider";
        }
    }
}
