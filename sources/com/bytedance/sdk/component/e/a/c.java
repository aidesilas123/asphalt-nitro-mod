package com.bytedance.sdk.component.e.a;

/* JADX INFO: compiled from: AssertUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static void a(Object obj, String str) {
        if (obj == null) {
            a(str);
        }
    }

    public static void a(String str) {
        throw new IllegalArgumentException(str);
    }
}
