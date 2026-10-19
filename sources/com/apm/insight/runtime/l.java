package com.apm.insight.runtime;

import android.os.SystemClock;
import android.util.Printer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class l {
    private static Printer a;
    private static l b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Printer f315f = new Printer() { // from class: com.apm.insight.runtime.l.1
        @Override // android.util.Printer
        public void println(String str) {
            if (str == null) {
                return;
            }
            if (str.charAt(0) == '>') {
                l.a().a(str);
            } else if (str.charAt(0) == '<') {
                l.a().b(str);
            }
            if (l.a == null || l.a == l.f315f) {
                return;
            }
            l.a.println(str);
        }
    };
    private long c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Printer> f316d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Printer> f317e = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f318g = false;

    private l() {
    }

    public static l a() {
        if (b == null) {
            synchronized (l.class) {
                if (b == null) {
                    b = new l();
                }
            }
        }
        return b;
    }

    private static void a(List<? extends Printer> list, String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Printer printer = list.get(i);
                if (printer == null) {
                    return;
                }
                printer.println(str);
            }
        } catch (Throwable th) {
            com.apm.insight.l.q.a(th);
        }
    }

    void a(String str) {
        com.apm.insight.b.f.a(false);
        this.c = -1L;
        try {
            a(this.f316d, str);
        } catch (Exception e2) {
            com.apm.insight.l.q.a((Throwable) e2);
        }
    }

    void b(String str) {
        this.c = SystemClock.uptimeMillis();
        try {
            a(this.f317e, str);
        } catch (Exception e2) {
            com.apm.insight.l.q.b((Throwable) e2);
        }
    }

    public boolean b() {
        return this.c != -1 && SystemClock.uptimeMillis() - this.c > 5000;
    }
}
