package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.os.Build;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: CpuUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static int a() {
        File[] fileArrListFiles;
        if (Build.VERSION.SDK_INT >= 17) {
            return Math.max(Runtime.getRuntime().availableProcessors(), 0);
        }
        try {
            File file = new File("/sys/devices/system/cpu/");
            if (!file.exists() || (fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: com.bytedance.sdk.openadsdk.utils.f.1
                private final Pattern a = Pattern.compile("^cpu[0-9]+$");

                @Override // java.io.FilenameFilter
                public boolean accept(File file2, String str) {
                    return this.a.matcher(str).matches();
                }
            })) == null) {
                return 0;
            }
            return Math.max(fileArrListFiles.length, 0);
        } catch (Throwable unused) {
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0061 A[Catch: Exception -> 0x0064, DONT_GENERATE, TRY_LEAVE, TryCatch #4 {Exception -> 0x0064, blocks: (B:22:0x005c, B:24:0x0061), top: B:44:0x005c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a(int r7) {
        /*
            r0 = 0
            r1 = 0
            r1 = r0
            r2 = 0
        L4:
            int r7 = r7 + (-1)
            if (r7 < 0) goto L72
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L4d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4d
            r4.<init>()     // Catch: java.lang.Throwable -> L4d
            java.lang.String r5 = "/sys/devices/system/cpu/cpu"
            r4.append(r5)     // Catch: java.lang.Throwable -> L4d
            r4.append(r7)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r5 = "/cpufreq/cpuinfo_max_freq"
            r4.append(r5)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L4d
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L4d
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L47
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L47
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L42
            boolean r4 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L42
            if (r4 != 0) goto L39
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L42
            if (r1 <= r2) goto L39
            r2 = r1
        L39:
            r0.close()     // Catch: java.lang.Exception -> L3f
            r3.close()     // Catch: java.lang.Exception -> L3f
        L3f:
            r1 = r0
            r0 = r3
            goto L4
        L42:
            r1 = move-exception
            r6 = r3
            r3 = r0
            r0 = r6
            goto L51
        L47:
            r0 = move-exception
            r6 = r1
            r1 = r0
            r0 = r3
            r3 = r6
            goto L51
        L4d:
            r3 = move-exception
            r6 = r3
            r3 = r1
            r1 = r6
        L51:
            java.lang.String r4 = "CpuUtils"
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L66
            com.bytedance.sdk.component.utils.l.e(r4, r1)     // Catch: java.lang.Throwable -> L66
            if (r3 == 0) goto L5f
            r3.close()     // Catch: java.lang.Exception -> L64
        L5f:
            if (r0 == 0) goto L64
            r0.close()     // Catch: java.lang.Exception -> L64
        L64:
            r1 = r3
            goto L4
        L66:
            r7 = move-exception
            if (r3 == 0) goto L6c
            r3.close()     // Catch: java.lang.Exception -> L71
        L6c:
            if (r0 == 0) goto L71
            r0.close()     // Catch: java.lang.Exception -> L71
        L71:
            throw r7
        L72:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.f.a(int):int");
    }

    public static int a(Context context) {
        return com.bytedance.sdk.openadsdk.core.c.a(context).b("cpu_count", 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0064 A[Catch: Exception -> 0x0067, DONT_GENERATE, TRY_LEAVE, TryCatch #2 {Exception -> 0x0067, blocks: (B:24:0x005f, B:26:0x0064), top: B:42:0x005f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int b(int r7) {
        /*
            r0 = 0
            r1 = 0
            r1 = r0
            r2 = 0
        L4:
            int r7 = r7 + (-1)
            if (r7 < 0) goto L75
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L50
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50
            r4.<init>()     // Catch: java.lang.Throwable -> L50
            java.lang.String r5 = "/sys/devices/system/cpu/cpu"
            r4.append(r5)     // Catch: java.lang.Throwable -> L50
            r4.append(r7)     // Catch: java.lang.Throwable -> L50
            java.lang.String r5 = "/cpufreq/cpuinfo_min_freq"
            r4.append(r5)     // Catch: java.lang.Throwable -> L50
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L50
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L50
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L4a
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L4a
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L45
            boolean r4 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L45
            if (r4 != 0) goto L3c
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L45
            if (r1 >= r2) goto L39
            goto L3b
        L39:
            if (r2 != 0) goto L3c
        L3b:
            r2 = r1
        L3c:
            r0.close()     // Catch: java.lang.Exception -> L42
            r3.close()     // Catch: java.lang.Exception -> L42
        L42:
            r1 = r0
            r0 = r3
            goto L4
        L45:
            r1 = move-exception
            r6 = r3
            r3 = r0
            r0 = r6
            goto L54
        L4a:
            r0 = move-exception
            r6 = r1
            r1 = r0
            r0 = r3
            r3 = r6
            goto L54
        L50:
            r3 = move-exception
            r6 = r3
            r3 = r1
            r1 = r6
        L54:
            java.lang.String r4 = "CpuUtils"
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L69
            com.bytedance.sdk.component.utils.l.e(r4, r1)     // Catch: java.lang.Throwable -> L69
            if (r3 == 0) goto L62
            r3.close()     // Catch: java.lang.Exception -> L67
        L62:
            if (r0 == 0) goto L67
            r0.close()     // Catch: java.lang.Exception -> L67
        L67:
            r1 = r3
            goto L4
        L69:
            r7 = move-exception
            if (r3 == 0) goto L6f
            r3.close()     // Catch: java.lang.Exception -> L74
        L6f:
            if (r0 == 0) goto L74
            r0.close()     // Catch: java.lang.Exception -> L74
        L74:
            throw r7
        L75:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.f.b(int):int");
    }

    public static int b(Context context) {
        return com.bytedance.sdk.openadsdk.core.c.a(context).b("cpu_max_frequency", 0);
    }

    public static int c(Context context) {
        return com.bytedance.sdk.openadsdk.core.c.a(context).b("cpu_min_frequency", 0);
    }
}
