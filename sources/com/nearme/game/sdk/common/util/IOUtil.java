package com.nearme.game.sdk.common.util;

/* JADX INFO: loaded from: classes4.dex */
public class IOUtil {
    /* JADX WARN: Removed duplicated region for block: B:47:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x001c -> B:54:0x0044). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object ByteArrToObject(byte[] r4) throws java.lang.Throwable {
        /*
            r0 = 0
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2f
            java.io.ObjectInputStream r4 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L27
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L27
            java.lang.Object r0 = r4.readObject()     // Catch: java.lang.Exception -> L20 java.lang.Throwable -> L45
            r1.close()     // Catch: java.io.IOException -> L13
            goto L17
        L13:
            r1 = move-exception
            r1.printStackTrace()
        L17:
            r4.close()     // Catch: java.io.IOException -> L1b
            goto L44
        L1b:
            r4 = move-exception
            r4.printStackTrace()
            goto L44
        L20:
            r2 = move-exception
            goto L32
        L22:
            r4 = move-exception
            r3 = r0
            r0 = r4
            r4 = r3
            goto L46
        L27:
            r2 = move-exception
            r4 = r0
            goto L32
        L2a:
            r4 = move-exception
            r1 = r0
            r0 = r4
            r4 = r1
            goto L46
        L2f:
            r2 = move-exception
            r4 = r0
            r1 = r4
        L32:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L3f
            r1.close()     // Catch: java.io.IOException -> L3b
            goto L3f
        L3b:
            r1 = move-exception
            r1.printStackTrace()
        L3f:
            if (r4 == 0) goto L44
            r4.close()     // Catch: java.io.IOException -> L1b
        L44:
            return r0
        L45:
            r0 = move-exception
        L46:
            if (r1 == 0) goto L50
            r1.close()     // Catch: java.io.IOException -> L4c
            goto L50
        L4c:
            r1 = move-exception
            r1.printStackTrace()
        L50:
            if (r4 == 0) goto L5a
            r4.close()     // Catch: java.io.IOException -> L56
            goto L5a
        L56:
            r4 = move-exception
            r4.printStackTrace()
        L5a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.game.sdk.common.util.IOUtil.ByteArrToObject(byte[]):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x001f -> B:48:0x0043). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] ObjectToByte(java.lang.Object r3) throws java.lang.Throwable {
        /*
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            r1.<init>()     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L28
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L28
            r2.writeObject(r3)     // Catch: java.lang.Exception -> L23 java.lang.Throwable -> L44
            byte[] r0 = r1.toByteArray()     // Catch: java.lang.Exception -> L23 java.lang.Throwable -> L44
            r1.close()     // Catch: java.io.IOException -> L16
            goto L1a
        L16:
            r3 = move-exception
            r3.printStackTrace()
        L1a:
            r2.close()     // Catch: java.io.IOException -> L1e
            goto L43
        L1e:
            r3 = move-exception
            r3.printStackTrace()
            goto L43
        L23:
            r3 = move-exception
            goto L31
        L25:
            r3 = move-exception
            r2 = r0
            goto L45
        L28:
            r3 = move-exception
            r2 = r0
            goto L31
        L2b:
            r3 = move-exception
            r2 = r0
            goto L46
        L2e:
            r3 = move-exception
            r1 = r0
            r2 = r1
        L31:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L3e
            r1.close()     // Catch: java.io.IOException -> L3a
            goto L3e
        L3a:
            r3 = move-exception
            r3.printStackTrace()
        L3e:
            if (r2 == 0) goto L43
            r2.close()     // Catch: java.io.IOException -> L1e
        L43:
            return r0
        L44:
            r3 = move-exception
        L45:
            r0 = r1
        L46:
            if (r0 == 0) goto L50
            r0.close()     // Catch: java.io.IOException -> L4c
            goto L50
        L4c:
            r0 = move-exception
            r0.printStackTrace()
        L50:
            if (r2 == 0) goto L5a
            r2.close()     // Catch: java.io.IOException -> L56
            goto L5a
        L56:
            r0 = move-exception
            r0.printStackTrace()
        L5a:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.game.sdk.common.util.IOUtil.ObjectToByte(java.lang.Object):byte[]");
    }
}
