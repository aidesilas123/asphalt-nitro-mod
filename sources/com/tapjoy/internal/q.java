package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class q {
    public static q a;

    /* JADX WARN: Removed duplicated region for block: B:30:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(android.app.Activity r7) {
        /*
            com.tapjoy.internal.q r0 = com.tapjoy.internal.q.a
            if (r0 == 0) goto L7d
            com.tapjoy.internal.z6 r0 = (com.tapjoy.internal.z6) r0
            r1 = 0
            r2 = 1
            if (r7 == 0) goto L5d
            int r3 = r7.getTaskId()
            r4 = -1
            if (r3 != r4) goto L12
            goto L5a
        L12:
            android.content.Intent r7 = r7.getIntent()
            if (r7 == 0) goto L5a
            java.util.Set r4 = r7.getCategories()
            if (r4 == 0) goto L34
            java.lang.String r5 = "android.intent.category.LAUNCHER"
            boolean r4 = r4.contains(r5)
            if (r4 == 0) goto L34
            java.lang.String r4 = r7.getAction()
            java.lang.String r5 = "android.intent.action.MAIN"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L34
            r4 = 1
            goto L35
        L34:
            r4 = 0
        L35:
            if (r4 != 0) goto L38
            goto L5a
        L38:
            android.content.ComponentName r7 = r7.getComponent()
            if (r7 != 0) goto L3f
            goto L5a
        L3f:
            java.lang.String r7 = r7.getClassName()
            java.util.HashMap r4 = r0.c
            java.lang.Integer r5 = java.lang.Integer.valueOf(r3)
            java.lang.Object r7 = r4.put(r7, r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            if (r7 == 0) goto L58
            int r7 = r7.intValue()
            if (r7 != r3) goto L58
            goto L5a
        L58:
            r7 = 1
            goto L5b
        L5a:
            r7 = 0
        L5b:
            if (r7 != 0) goto L76
        L5d:
            boolean r7 = r0.f8026e
            if (r7 != 0) goto L7b
            com.tapjoy.internal.a4 r7 = r0.f8025d
            r7.getClass()
            long r3 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.NullPointerException -> L73
            long r5 = r7.b     // Catch: java.lang.NullPointerException -> L73
            long r3 = r3 - r5
            long r5 = r7.a     // Catch: java.lang.NullPointerException -> L73
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L74
        L73:
            r1 = 1
        L74:
            if (r1 == 0) goto L7b
        L76:
            com.tapjoy.internal.o6 r7 = r0.f8027f
            r7.g()
        L7b:
            r0.f8026e = r2
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.q.a(android.app.Activity):void");
    }
}
