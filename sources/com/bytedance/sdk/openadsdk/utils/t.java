package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;
import android.text.TextUtils;
import com.json.o2;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: RomUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f1876e;
    private static final CharSequence c = "amigo";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final CharSequence f1875d = "funtouch";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicInteger f1877f = new AtomicInteger(0);
    public static boolean a = false;
    public static boolean b = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f1878g = Integer.MAX_VALUE;
    private static final ConcurrentHashMap<String, String> h = new ConcurrentHashMap<>();

    /* JADX INFO: compiled from: RomUtils.java */
    public static class a implements Callable<String> {
        private final String a;

        public a(String str) {
            this.a = str;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            String str = (String) t.h.get(this.a);
            if (str != null) {
                return str;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strC = t.c(this.a);
            com.bytedance.sdk.component.utils.l.b("RomUtils", "property:" + strC + ", use time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
            if (strC != null) {
                t.h.put(this.a, strC);
            }
            return strC;
        }
    }

    public static String a() {
        if (!TextUtils.isEmpty(f1876e)) {
            return f1876e;
        }
        String strA = com.bytedance.sdk.openadsdk.core.h.a("sdk_local_rom_info", 604800000L);
        f1876e = strA;
        if (TextUtils.isEmpty(strA)) {
            String strW = w();
            f1876e = strW;
            com.bytedance.sdk.openadsdk.core.h.a("sdk_local_rom_info", strW);
        }
        return f1876e;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = n();
        }
        return (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("emotionui")) || t();
    }

    public static boolean b() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static String c() {
        return d("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        Process processExec;
        String line = "";
        Process process = null;
        try {
            try {
                try {
                    processExec = Runtime.getRuntime().exec("getprop " + str);
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 1024);
                    } catch (IllegalThreadStateException unused) {
                        bufferedReader = null;
                    }
                } catch (Throwable th2) {
                    bufferedReader = null;
                    th = th2;
                }
            } catch (IllegalThreadStateException unused2) {
                bufferedReader = null;
            }
        } catch (IOException e2) {
            com.bytedance.sdk.component.utils.l.c("ToolUtils", "Exception while closing InputStream", e2);
        }
        try {
            line = bufferedReader.readLine();
            processExec.exitValue();
            bufferedReader.close();
        } catch (IllegalThreadStateException unused3) {
            process = processExec;
            try {
                process.destroy();
            } catch (Throwable unused4) {
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return line;
        } catch (Throwable th3) {
            th = th3;
            try {
                com.bytedance.sdk.component.utils.l.c("ToolUtils", "Unable to read sysprop " + str, th);
                return line;
            } finally {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        com.bytedance.sdk.component.utils.l.c("ToolUtils", "Exception while closing InputStream", e3);
                    }
                }
            }
        }
        return line;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static String d(String str) {
        String str2;
        com.bytedance.sdk.component.utils.l.a("RomUtils", "getSystemPropertyTask() called with: propName = [", str, o2.i.f6491e);
        String str3 = h.get(str);
        if (str3 != null) {
            return str3;
        }
        if (TextUtils.isEmpty("")) {
            final com.bytedance.sdk.component.g.g gVar = new com.bytedance.sdk.component.g.g(new a(str), 5, 2);
            aa.b(new com.bytedance.sdk.component.g.h("_getSystemPropertyTask") { // from class: com.bytedance.sdk.openadsdk.utils.t.1
                @Override // java.lang.Runnable
                public void run() {
                    gVar.run();
                }
            });
            str2 = (String) gVar.get(1L, TimeUnit.SECONDS);
        } else {
            str2 = "";
        }
        return str2 == null ? "" : str2;
    }

    public static boolean d() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static boolean e() {
        if (!b) {
            try {
                Class.forName("miui.os.Build");
                a = true;
                b = true;
                return true;
            } catch (Exception unused) {
                b = true;
            }
        }
        return a;
    }

    public static String f() {
        return d("ro.vivo.os.build.display.id") + "_" + d("ro.vivo.product.version");
    }

    public static boolean g() {
        String strD = d("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(strD) && strD.toLowerCase().contains(f1875d);
    }

    public static boolean h() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains(c);
    }

    public static String i() {
        return Build.DISPLAY + "_" + d("ro.gn.sv.version");
    }

    public static String j() {
        if (!k()) {
            return "";
        }
        return "eui_" + d("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static boolean k() {
        return !TextUtils.isEmpty(d("ro.letv.release.version"));
    }

    public static String l() {
        if (!e()) {
            return "";
        }
        return "miui_" + d("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static String m() {
        String strN = n();
        if (strN == null || !strN.toLowerCase().contains("emotionui")) {
            return "";
        }
        return strN + "_" + Build.DISPLAY;
    }

    public static String n() {
        return d("ro.build.version.emui");
    }

    public static boolean o() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    public static String p() {
        if (o()) {
            try {
                return "smartisan_" + d("ro.smartisan.version");
            } catch (Throwable unused) {
            }
        }
        return Build.DISPLAY;
    }

    public static String q() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    public static boolean r() {
        if (f1878g == Integer.MAX_VALUE) {
            String str = Build.MANUFACTURER;
            String strG = ac.g("kllk");
            if (TextUtils.isEmpty(str) || !str.toLowerCase().contains(strG)) {
                f1878g = 0;
            } else {
                f1878g = 1;
            }
        }
        return f1878g == 1;
    }

    public static String s() {
        if (!r()) {
            return "";
        }
        return "coloros_" + d(ac.g("ro.build.version.kllkrom")) + "_" + Build.DISPLAY;
    }

    public static boolean t() {
        try {
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || !str.toLowerCase().startsWith("huawei")) {
                String str2 = Build.MANUFACTURER;
                if (TextUtils.isEmpty(str2)) {
                    return false;
                }
                if (!str2.toLowerCase().startsWith("huawei")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean u() {
        if (f1877f.get() == 1) {
            return true;
        }
        if (f1877f.get() == 2) {
            return false;
        }
        boolean zEquals = "6.0.1".equals(Build.VERSION.RELEASE);
        boolean z = Build.BRAND.trim().toLowerCase().contains("samsung") && Build.MANUFACTURER.trim().toLowerCase().contains("samsung");
        if (zEquals && z) {
            f1877f.set(1);
            return true;
        }
        f1877f.set(2);
        return false;
    }

    private static String w() {
        if (o()) {
            return p();
        }
        if (e()) {
            return l();
        }
        if (b()) {
            return q();
        }
        if (r()) {
            return s();
        }
        String strM = m();
        if (!TextUtils.isEmpty(strM)) {
            return strM;
        }
        if (g()) {
            return f();
        }
        if (h()) {
            return i();
        }
        if (d()) {
            return c();
        }
        String strJ = j();
        return !TextUtils.isEmpty(strJ) ? strJ : Build.DISPLAY;
    }
}
