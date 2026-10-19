package com.apm.insight.b;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Printer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    private static int a = 5;
    private static b b;
    private static a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Printer f220e;

    public interface a {
        void a(long j);
    }

    static class b implements Printer {
        List<Printer> a = new ArrayList();
        List<Printer> b = new ArrayList();
        List<Printer> c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f221d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f222e = false;

        b() {
        }

        @Override // android.util.Printer
        public void println(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            long jCurrentTimeMillis = j.c != null ? System.currentTimeMillis() : 0L;
            if (str.charAt(0) == '>' && this.f222e) {
                for (Printer printer : this.c) {
                    if (!this.a.contains(printer)) {
                        this.a.add(printer);
                    }
                }
                this.c.clear();
                this.f222e = false;
            }
            if (this.a.size() > j.a) {
                Log.e("LooperPrinterUtils", "wrapper contains too many printer,please check if the useless printer have been removed");
            }
            for (Printer printer2 : this.a) {
                if (printer2 != null) {
                    printer2.println(str);
                }
            }
            if (str.charAt(0) == '<' && this.f221d) {
                for (Printer printer3 : this.b) {
                    this.a.remove(printer3);
                    this.c.remove(printer3);
                }
                this.b.clear();
                this.f221d = false;
            }
            if (j.c == null || jCurrentTimeMillis <= 0) {
                return;
            }
            j.c.a(System.currentTimeMillis() - jCurrentTimeMillis);
        }
    }

    public static void a() {
        if (f219d) {
            return;
        }
        f219d = true;
        b = new b();
        Printer printerD = d();
        f220e = printerD;
        if (printerD != null) {
            b.a.add(printerD);
        }
        if (com.apm.insight.i.r()) {
            Looper.getMainLooper().setMessageLogging(b);
        }
    }

    public static void a(Printer printer) {
        if (printer == null || b.c.contains(printer)) {
            return;
        }
        b.c.add(printer);
        b.f222e = true;
    }

    private static Printer d() {
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            return (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception unused) {
            return null;
        }
    }
}
