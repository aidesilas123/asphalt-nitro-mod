package com.bytedance.sdk.openadsdk.utils;

import java.lang.ref.SoftReference;

/* JADX INFO: compiled from: AdUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static SoftReference<com.bytedance.sdk.openadsdk.core.model.q> a;

    public static com.bytedance.sdk.openadsdk.core.model.q a() {
        SoftReference<com.bytedance.sdk.openadsdk.core.model.q> softReference = a;
        if (softReference != null) {
            return softReference.get();
        }
        return null;
    }

    public static void a(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (qVar == null) {
            return;
        }
        a = new SoftReference<>(qVar);
    }
}
