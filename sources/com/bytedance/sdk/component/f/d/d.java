package com.bytedance.sdk.component.f.d;

import android.content.Context;
import com.bytedance.sdk.component.f.c.g;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: MultiProcessFileUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static String a(int i) {
        return "tnc_config" + i;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(android.content.Context r2, int r3, int r4) {
        /*
            java.lang.String r0 = ""
            r1 = 1
            if (r3 == r1) goto L6
            goto L29
        L6:
            com.bytedance.sdk.component.f.c.g r3 = com.bytedance.sdk.component.f.c.g.a()     // Catch: java.lang.Exception -> L29
            com.bytedance.sdk.component.f.c.e r3 = r3.a(r4)     // Catch: java.lang.Exception -> L29
            com.bytedance.sdk.component.f.c.b r3 = r3.d()     // Catch: java.lang.Exception -> L29
            if (r3 == 0) goto L29
            com.bytedance.sdk.component.f.c.g r3 = com.bytedance.sdk.component.f.c.g.a()     // Catch: java.lang.Exception -> L29
            com.bytedance.sdk.component.f.c.e r3 = r3.a(r4)     // Catch: java.lang.Exception -> L29
            com.bytedance.sdk.component.f.c.b r3 = r3.d()     // Catch: java.lang.Exception -> L29
            java.lang.String r4 = a(r4)     // Catch: java.lang.Exception -> L29
            java.lang.String r2 = r3.a(r2, r4, r0)     // Catch: java.lang.Exception -> L29
            goto L2a
        L29:
            r2 = r0
        L2a:
            boolean r3 = r2 instanceof java.lang.String
            if (r3 == 0) goto L32
            java.lang.String r0 = java.lang.String.valueOf(r2)
        L32:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.f.d.d.a(android.content.Context, int, int):java.lang.String");
    }

    public static void a(Context context, int i, String str, int i2) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (i == 1) {
                linkedHashMap.put(a(i2), str);
            }
            c.b("MultiProcessFileUtils", "saveData = " + str);
            if (g.a().a(i2).d() != null) {
                g.a().a(i2).d().a(context, linkedHashMap);
            }
        } catch (Exception unused) {
        }
    }
}
