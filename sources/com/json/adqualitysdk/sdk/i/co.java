package com.json.adqualitysdk.sdk.i;

/* JADX INFO: loaded from: classes4.dex */
public final class co extends cx {
    private static long h = -9217849509384192948L;
    private static int i = 0;
    private static int j = 1;

    private static String d(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i2;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i3 = h.f65;
                if (i3 < cArr.length) {
                    cArr2[i3] = (char) (((long) (cArr[i3] ^ (h.f64 * i3))) ^ h);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x007e, code lost:
    
        if (com.json.adqualitysdk.sdk.i.cx.b(r13, 3, java.lang.Boolean.class) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008e, code lost:
    
        if ((com.json.adqualitysdk.sdk.i.cx.b(r13, 2, java.lang.Boolean.class) ? '3' : 'D') != '3') goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
    
        r2 = com.json.adqualitysdk.sdk.i.co.j + 119;
        com.json.adqualitysdk.sdk.i.co.i = r2 % 128;
        r2 = r2 % 2;
        r7 = r1;
        r8 = ((java.lang.Boolean) com.json.adqualitysdk.sdk.i.cx.m592(r13, 3, java.lang.Boolean.class)).booleanValue();
     */
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object m520(com.json.adqualitysdk.sdk.i.cj r12, java.util.List<java.lang.Object> r13) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.co.m520(com.ironsource.adqualitysdk.sdk.i.cj, java.util.List):java.lang.Object");
    }
}
