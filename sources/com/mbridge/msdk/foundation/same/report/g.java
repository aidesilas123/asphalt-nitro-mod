package com.mbridge.msdk.foundation.same.report;

/* JADX INFO: compiled from: DomainReport.java */
/* JADX INFO: loaded from: classes4.dex */
public class g {
    private static String a = "DomainReport";

    /* JADX WARN: Removed duplicated region for block: B:27:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(com.mbridge.msdk.c.e r6, java.lang.String r7) {
        /*
            r0 = 0
            r1 = 1
            if (r6 == 0) goto L52
            boolean r2 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L47
            if (r2 != 0) goto L52
            int r2 = r6.aq()     // Catch: java.lang.Exception -> L47
            org.json.JSONArray r3 = r6.w()     // Catch: java.lang.Exception -> L47
            org.json.JSONArray r6 = r6.x()     // Catch: java.lang.Exception -> L47
            if (r6 == 0) goto L2d
            r4 = 0
        L19:
            int r5 = r6.length()     // Catch: java.lang.Exception -> L47
            if (r4 >= r5) goto L2d
            java.lang.String r5 = r6.getString(r4)     // Catch: java.lang.Exception -> L47
            boolean r5 = r7.contains(r5)     // Catch: java.lang.Exception -> L47
            if (r5 == 0) goto L2a
            return r0
        L2a:
            int r4 = r4 + 1
            goto L19
        L2d:
            r6 = 2
            if (r2 != r6) goto L52
            if (r3 == 0) goto L53
            r6 = 0
        L33:
            int r2 = r3.length()     // Catch: java.lang.Exception -> L47
            if (r6 >= r2) goto L53
            java.lang.String r2 = r3.getString(r6)     // Catch: java.lang.Exception -> L47
            boolean r2 = r7.contains(r2)     // Catch: java.lang.Exception -> L47
            if (r2 == 0) goto L44
            return r1
        L44:
            int r6 = r6 + 1
            goto L33
        L47:
            r6 = move-exception
            java.lang.String r7 = com.mbridge.msdk.foundation.same.report.g.a
            java.lang.String r6 = r6.getMessage()
            com.mbridge.msdk.foundation.tools.aa.d(r7, r6)
            goto L54
        L52:
            r0 = 1
        L53:
            r1 = r0
        L54:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.report.g.a(com.mbridge.msdk.c.e, java.lang.String):boolean");
    }
}
