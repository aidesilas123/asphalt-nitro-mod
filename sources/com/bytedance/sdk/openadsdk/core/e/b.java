package com.bytedance.sdk.openadsdk.core.e;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: SecSdkHelper.java */
/* JADX INFO: loaded from: classes2.dex */
class b {
    private static com.bytedance.sdk.openadsdk.core.e.a a;
    private String b;

    /* JADX INFO: compiled from: SecSdkHelper.java */
    private static class a {
        private static final b a = new b();
    }

    private b() {
        this.b = null;
        a = new com.bytedance.sdk.openadsdk.core.e.a();
    }

    public static b a() {
        return a.a;
    }

    public Map<String, String> a(String str, byte[] bArr) {
        com.bytedance.sdk.openadsdk.core.e.a aVar = a;
        return aVar != null ? aVar.a(str, bArr) : new HashMap();
    }

    public void a(String str) {
        com.bytedance.sdk.openadsdk.core.e.a aVar;
        if (TextUtils.isEmpty(str) || (aVar = a) == null) {
            return;
        }
        aVar.a(str);
    }

    public void b(String str) {
        com.bytedance.sdk.openadsdk.core.e.a aVar;
        if (TextUtils.isEmpty(str) || (aVar = a) == null) {
            return;
        }
        aVar.b(str);
    }

    public boolean b() {
        com.bytedance.sdk.openadsdk.core.e.a aVar = a;
        if (aVar == null) {
            return false;
        }
        return aVar.b();
    }

    public String c() {
        String strC;
        com.bytedance.sdk.openadsdk.core.e.a aVar = a;
        return (aVar == null || (strC = aVar.c()) == null) ? "" : strC;
    }

    public void c(@NonNull String str) {
        com.bytedance.sdk.openadsdk.core.e.a aVar = a;
        if (aVar != null) {
            aVar.c(str);
        }
    }
}
