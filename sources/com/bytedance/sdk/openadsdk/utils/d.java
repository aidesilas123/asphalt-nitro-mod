package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.json.o2;
import java.util.Iterator;

/* JADX INFO: compiled from: AutoTestUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static String a(String str) {
        if (!com.bytedance.sdk.component.utils.l.d() || TextUtils.isEmpty(str)) {
            return str;
        }
        com.bytedance.sdk.openadsdk.core.model.f fVar = new com.bytedance.sdk.openadsdk.core.model.f(com.bytedance.sdk.openadsdk.core.h.b().l());
        StringBuilder sb = new StringBuilder(str);
        Iterator<String> it = fVar.b().iterator();
        while (it.hasNext()) {
            if (sb.toString().contains(it.next())) {
                if (sb.toString().contains("?")) {
                    sb.append(o2.i.c);
                    sb.append(fVar.a());
                } else {
                    sb.append("?");
                    sb.append(fVar.a());
                }
            }
        }
        return sb.toString();
    }
}
