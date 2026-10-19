package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a5 {
    /* JADX WARN: Removed duplicated region for block: B:25:0x004a A[Catch: NoSuchFieldException -> 0x0057, IllegalAccessException -> 0x0060, all -> 0x006c, TRY_LEAVE, TryCatch #3 {IllegalAccessException -> 0x0060, NoSuchFieldException -> 0x0057, blocks: (B:15:0x0018, B:17:0x001c, B:19:0x0030, B:22:0x003b, B:23:0x0040, B:25:0x004a), top: B:41:0x0018, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.os.Bundle a(android.app.Notification r6) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 < r1) goto L9
            android.os.Bundle r6 = r6.extras
            return r6
        L9:
            r1 = 16
            r2 = 0
            if (r0 < r1) goto L6f
            java.lang.Object r0 = com.tapjoy.internal.a0.a
            monitor-enter(r0)
            boolean r1 = com.tapjoy.internal.a0.c     // Catch: java.lang.Throwable -> L6c
            if (r1 == 0) goto L17
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            goto L6b
        L17:
            r1 = 1
            java.lang.reflect.Field r3 = com.tapjoy.internal.a0.b     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            if (r3 != 0) goto L40
            java.lang.Class<android.app.Notification> r3 = android.app.Notification.class
            java.lang.String r4 = "extras"
            java.lang.reflect.Field r3 = r3.getDeclaredField(r4)     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            java.lang.Class<android.os.Bundle> r4 = android.os.Bundle.class
            java.lang.Class r5 = r3.getType()     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            boolean r4 = r4.isAssignableFrom(r5)     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            if (r4 != 0) goto L3b
            java.lang.String r6 = "NotificationCompat"
            java.lang.String r3 = "Notification.extras field is not of type Bundle"
            android.util.Log.e(r6, r3)     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            com.tapjoy.internal.a0.c = r1     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            goto L6b
        L3b:
            r3.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            com.tapjoy.internal.a0.b = r3     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
        L40:
            java.lang.reflect.Field r3 = com.tapjoy.internal.a0.b     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            java.lang.Object r3 = r3.get(r6)     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            android.os.Bundle r3 = (android.os.Bundle) r3     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            if (r3 != 0) goto L54
            android.os.Bundle r3 = new android.os.Bundle     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            r3.<init>()     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            java.lang.reflect.Field r4 = com.tapjoy.internal.a0.b     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
            r4.set(r6, r3)     // Catch: java.lang.NoSuchFieldException -> L57 java.lang.IllegalAccessException -> L60 java.lang.Throwable -> L6c
        L54:
            r2 = r3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            goto L6b
        L57:
            r6 = move-exception
            java.lang.String r3 = "NotificationCompat"
            java.lang.String r4 = "Unable to access notification extras"
            android.util.Log.e(r3, r4, r6)     // Catch: java.lang.Throwable -> L6c
            goto L68
        L60:
            r6 = move-exception
            java.lang.String r3 = "NotificationCompat"
            java.lang.String r4 = "Unable to access notification extras"
            android.util.Log.e(r3, r4, r6)     // Catch: java.lang.Throwable -> L6c
        L68:
            com.tapjoy.internal.a0.c = r1     // Catch: java.lang.Throwable -> L6c
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
        L6b:
            return r2
        L6c:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            throw r6
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.a5.a(android.app.Notification):android.os.Bundle");
    }
}
