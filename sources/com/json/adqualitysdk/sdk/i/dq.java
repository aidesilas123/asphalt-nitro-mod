package com.json.adqualitysdk.sdk.i;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class dq {
    private static Map<String, String> a = new HashMap();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m680(String str) {
        String str2 = a.get(str);
        if (str2 != null) {
            return str2;
        }
        a.put(str, str);
        return str;
    }
}
