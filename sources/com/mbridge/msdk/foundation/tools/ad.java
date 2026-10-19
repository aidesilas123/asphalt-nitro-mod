package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.util.UUID;

/* JADX INFO: compiled from: SameSDCardTool.java */
/* JADX INFO: loaded from: classes4.dex */
public final class ad {
    static boolean a = false;
    static String b = "";
    public static char[] c = {'P', 'a', 'c', 'k', 'a', 'g', 'e', 'M', 'a', 'n', 'a', 'g', 'e', 'r'};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f7212d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f7213e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f7214f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f7215g = -1;
    private static int h = -1;

    public static int a() {
        try {
            Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
            long jLongValue = ((Long) ai.b(contextG, "freeExternalSize", 0L)).longValue();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - jLongValue > 1800000 || f7214f == -1) {
                f7214f = Long.valueOf((d() / 1000) / 1000).intValue();
                ai.a(contextG, "freeExternalSize", Long.valueOf(jCurrentTimeMillis));
            }
        } catch (Throwable th) {
            aa.b("SameSDCardTool", th.getMessage(), th);
        }
        return f7214f;
    }

    private static File a(File file) {
        File file2 = new File(file, UUID.randomUUID() + "");
        if (file2.exists()) {
            file2.delete();
        }
        if (!file2.mkdirs()) {
            return null;
        }
        file2.delete();
        return file.getAbsoluteFile();
    }

    public static void a(Context context) {
        if (f7212d) {
            return;
        }
        try {
            try {
                b = context.getFilesDir().getAbsolutePath() + File.separator;
                a = false;
                b(context);
            } catch (Exception unused) {
                b = context.getFilesDir().getAbsolutePath() + File.separator;
                b(context);
            }
        } catch (Exception unused2) {
        }
        f7212d = true;
    }

    public static int b() {
        if (f7213e == -1) {
            try {
                f7213e = new Long((e() / 1000) / 1000).intValue();
            } catch (Throwable th) {
                aa.b("SameSDCardTool", th.getMessage(), th);
            }
        }
        return f7213e;
    }

    private static void b(Context context) {
        com.mbridge.msdk.foundation.same.b.e.a(new com.mbridge.msdk.foundation.same.b.d(c(context)));
        com.mbridge.msdk.foundation.same.b.e.a().b();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b A[PHI: r0
      0x006b: PHI (r0v5 java.io.File) = (r0v4 java.io.File), (r0v7 java.io.File) binds: [B:12:0x001d, B:19:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String c(android.content.Context r7) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 18
            if (r0 < r2) goto L1a
            java.io.File r0 = r7.getExternalFilesDir(r1)     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L1a
            java.io.File r0 = a(r0)     // Catch: java.lang.Throwable -> L12
            goto L1b
        L12:
            r0 = move-exception
            java.lang.String r2 = "common-exception"
            java.lang.String r3 = "hasSDCard is failed"
            com.mbridge.msdk.foundation.tools.aa.b(r2, r3, r0)
        L1a:
            r0 = r1
        L1b:
            boolean r2 = com.mbridge.msdk.foundation.tools.ad.a
            if (r2 == 0) goto L6b
            if (r0 != 0) goto L5a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()
            java.lang.String r2 = r2.getPath()
            r0.append(r2)
            java.lang.String r2 = java.io.File.separator
            r0.append(r2)
            java.lang.String r3 = "Android"
            r0.append(r3)
            r0.append(r2)
            java.lang.String r3 = "data"
            r0.append(r3)
            r0.append(r2)
            java.lang.String r2 = r7.getPackageName()
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.io.File r2 = new java.io.File
            r2.<init>(r0)
            java.io.File r0 = a(r2)
        L5a:
            long r2 = d()
            r4 = 31457280(0x1e00000, double:1.55419614E-316)
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L67
            r2 = 1
            goto L68
        L67:
            r2 = 0
        L68:
            if (r2 != 0) goto L6b
            goto L6c
        L6b:
            r1 = r0
        L6c:
            if (r1 == 0) goto L74
            boolean r0 = r1.exists()
            if (r0 != 0) goto L7c
        L74:
            java.io.File r7 = r7.getFilesDir()
            java.io.File r1 = r7.getAbsoluteFile()
        L7c:
            java.lang.String r7 = r1.getAbsolutePath()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.ad.c(android.content.Context):java.lang.String");
    }

    private static boolean c() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Exception unused) {
            aa.d("", "hasSDCard is failed");
            return false;
        }
    }

    private static long d() {
        if (c()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }

    private static long e() {
        if (c()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }
}
