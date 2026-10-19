package com.nearme.plugin.framework;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: PluginLoader.java */
/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
public final class o_a {
    public static int a = 0;
    public static int b = 1;
    public static int c = 2;

    private static String a(String str) {
        return "nearme" + File.separator + str;
    }

    private static boolean b(Context context, String str, int i, int i2) {
        String pluginUpdatePath = PathUtils.getPluginUpdatePath(context, str, i2);
        if (!new File(pluginUpdatePath).exists()) {
            return false;
        }
        try {
            if (f(context, PathUtils.getPluginInstallPath(context, str, i), pluginUpdatePath)) {
                return true;
            }
            return d(context, PathUtils.getPluginInstallPath(context, str, i2), pluginUpdatePath, str, i2);
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static synchronized boolean c(Context context, String str, String str2, int i, int i2) {
        boolean zCopyFile;
        InputStream inputStreamOpen = null;
        try {
            try {
                inputStreamOpen = context.getAssets().open(a(str));
                String pluginTempPath = PathUtils.getPluginTempPath(context, str2, i2);
                FileUtil.safelyDeleteFile(pluginTempPath);
                zCopyFile = FileUtil.copyFile(inputStreamOpen, pluginTempPath);
                if (zCopyFile) {
                    String pluginInstallPath = PathUtils.getPluginInstallPath(context, str2, i);
                    if (Integer.MIN_VALUE == i || !f(context, pluginInstallPath, pluginTempPath)) {
                        zCopyFile = d(context, PathUtils.getPluginInstallPath(context, str2, i2), pluginTempPath, str2, i2);
                    }
                }
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                    }
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                zCopyFile = false;
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (IOException e4) {
                        e = e4;
                        e.printStackTrace();
                    }
                }
            }
        } finally {
        }
        return zCopyFile;
    }

    private static synchronized boolean d(Context context, String str, String str2, String str3, int i) {
        boolean z;
        boolean zE;
        z = false;
        try {
            File file = new File(str);
            FileUtil.safelyDeleteFile(file);
            File file2 = new File(str2);
            if (file2.exists()) {
                zE = file2.renameTo(file);
                if (!zE && (zE = FileUtil.copyFile(str2, str))) {
                    file2.delete();
                }
            } else {
                zE = false;
            }
            if (zE) {
                PathUtils.updateVersionCache(str3, i);
                PluginFrameworkVersionSpUtils.getInstance(context).c(str3, i);
                PluginFrameworkVersionSpUtils.getInstance(context).d(str3, i);
                try {
                    zE = e(str, PathUtils.getLibPath(context));
                    File file3 = new File(PathUtils.getOptimizedDexPath(context));
                    if (file3.exists()) {
                        for (File file4 : file3.listFiles()) {
                            FileUtil.safelyDeleteFile(file4);
                        }
                    }
                } catch (NullPointerException e2) {
                    e2.printStackTrace();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            z = zE;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:160:0x01ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean e(java.lang.String r14, java.lang.String r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 504
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.plugin.framework.o_a.e(java.lang.String, java.lang.String):boolean");
    }

    private static boolean f(Context context, String str, String str2) {
        int versionCode = ApkFileParser.getVersionCode(context, str);
        int versionCode2 = ApkFileParser.getVersionCode(context, str2);
        return (-1 == versionCode || -1 == versionCode2 || versionCode2 > versionCode) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a A[PHI: r5
      0x003a: PHI (r5v7 java.lang.String[]) = (r5v4 java.lang.String[]), (r5v4 java.lang.String[]), (r5v6 java.lang.String[]) binds: [B:12:0x0029, B:16:0x0037, B:13:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[Catch: all -> 0x013b, TryCatch #4 {, blocks: (B:4:0x0003, B:7:0x0015, B:8:0x0023, B:13:0x002b, B:18:0x003c, B:20:0x0040, B:22:0x004c, B:25:0x005d, B:27:0x0069, B:30:0x0072, B:32:0x0084, B:37:0x0095, B:50:0x0109, B:39:0x00ad, B:44:0x00f4, B:46:0x00f8, B:49:0x0106, B:40:0x00cd, B:42:0x00ee, B:53:0x012b, B:54:0x0132, B:55:0x0133, B:56:0x013a, B:23:0x0059, B:16:0x0037), top: B:69:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0069 A[Catch: all -> 0x013b, TryCatch #4 {, blocks: (B:4:0x0003, B:7:0x0015, B:8:0x0023, B:13:0x002b, B:18:0x003c, B:20:0x0040, B:22:0x004c, B:25:0x005d, B:27:0x0069, B:30:0x0072, B:32:0x0084, B:37:0x0095, B:50:0x0109, B:39:0x00ad, B:44:0x00f4, B:46:0x00f8, B:49:0x0106, B:40:0x00cd, B:42:0x00ee, B:53:0x012b, B:54:0x0132, B:55:0x0133, B:56:0x013a, B:23:0x0059, B:16:0x0037), top: B:69:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ad A[Catch: all -> 0x013b, TryCatch #4 {, blocks: (B:4:0x0003, B:7:0x0015, B:8:0x0023, B:13:0x002b, B:18:0x003c, B:20:0x0040, B:22:0x004c, B:25:0x005d, B:27:0x0069, B:30:0x0072, B:32:0x0084, B:37:0x0095, B:50:0x0109, B:39:0x00ad, B:44:0x00f4, B:46:0x00f8, B:49:0x0106, B:40:0x00cd, B:42:0x00ee, B:53:0x012b, B:54:0x0132, B:55:0x0133, B:56:0x013a, B:23:0x0059, B:16:0x0037), top: B:69:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cd A[Catch: all -> 0x013b, TryCatch #4 {, blocks: (B:4:0x0003, B:7:0x0015, B:8:0x0023, B:13:0x002b, B:18:0x003c, B:20:0x0040, B:22:0x004c, B:25:0x005d, B:27:0x0069, B:30:0x0072, B:32:0x0084, B:37:0x0095, B:50:0x0109, B:39:0x00ad, B:44:0x00f4, B:46:0x00f8, B:49:0x0106, B:40:0x00cd, B:42:0x00ee, B:53:0x012b, B:54:0x0132, B:55:0x0133, B:56:0x013a, B:23:0x0059, B:16:0x0037), top: B:69:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f4 A[Catch: all -> 0x013b, TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0003, B:7:0x0015, B:8:0x0023, B:13:0x002b, B:18:0x003c, B:20:0x0040, B:22:0x004c, B:25:0x005d, B:27:0x0069, B:30:0x0072, B:32:0x0084, B:37:0x0095, B:50:0x0109, B:39:0x00ad, B:44:0x00f4, B:46:0x00f8, B:49:0x0106, B:40:0x00cd, B:42:0x00ee, B:53:0x012b, B:54:0x0132, B:55:0x0133, B:56:0x013a, B:23:0x0059, B:16:0x0037), top: B:69:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized int o_a(android.content.Context r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.plugin.framework.o_a.o_a(android.content.Context, java.lang.String, java.lang.String):int");
    }
}
