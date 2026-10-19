package com.bytedance.sdk.openadsdk.e;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.z;
import java.util.Map;

/* JADX INFO: compiled from: NetHook.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends a {
    public static c a;

    public static String a(com.bytedance.sdk.component.f.b.c cVar, String str) {
        c cVarA;
        Map map;
        if (!z.c() || (cVarA = b.a("net")) == null || (map = (Map) cVarA.a(1, str)) == null) {
            return str;
        }
        String str2 = (String) map.get("url");
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        Map map2 = (Map) map.get("header");
        if (map2 != null) {
            for (String str3 : map2.keySet()) {
                cVar.b(str3, (String) map2.get(str3));
            }
        }
        return str;
    }

    @Override // com.bytedance.sdk.openadsdk.e.a
    public String a() {
        return "net";
    }
}
