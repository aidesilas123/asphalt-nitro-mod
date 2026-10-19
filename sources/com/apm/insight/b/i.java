package com.apm.insight.b;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Printer;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private static volatile boolean a;
    private static Printer b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static e f215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile a f216e;
    private static final CopyOnWriteArrayList<e> c = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile boolean f217f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f218g = 0;
    private static int h = 0;

    public interface a {
        void a(long j);
    }

    public static void a() {
        if (a) {
            return;
        }
        a = true;
        b = new Printer() { // from class: com.apm.insight.b.i.1
            @Override // android.util.Printer
            public void println(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean z = false;
                if (str.charAt(0) == '>') {
                    z = true;
                } else if (str.charAt(0) != '<') {
                    return;
                }
                i.a(z, str);
            }
        };
        j.a();
        j.a(b);
    }

    public static void a(e eVar) {
        CopyOnWriteArrayList<e> copyOnWriteArrayList = c;
        synchronized (copyOnWriteArrayList) {
            copyOnWriteArrayList.add(eVar);
        }
    }

    public static void a(boolean z, String str) {
        e eVar;
        e eVar2;
        long jNanoTime = System.nanoTime();
        e.a = jNanoTime / 1000000;
        e.b = SystemClock.currentThreadTimeMillis();
        if (z && (eVar2 = f215d) != null && eVar2.a()) {
            f215d.a(str);
        }
        CopyOnWriteArrayList<e> copyOnWriteArrayList = c;
        for (int i = 0; i < copyOnWriteArrayList.size(); i++) {
            e eVar3 = copyOnWriteArrayList.get(i);
            if (eVar3 != null && eVar3.a()) {
                boolean z2 = eVar3.c;
                if (z) {
                    if (!z2) {
                        eVar3.a(str);
                    }
                } else if (z2) {
                    eVar3.b(str);
                }
            } else if (!z && eVar3.c) {
                eVar3.b("");
            }
        }
        if (!z && (eVar = f215d) != null && eVar.a()) {
            f215d.b("");
        }
        if (f217f) {
            f218g += System.nanoTime() - jNanoTime;
            int i2 = h;
            h = i2 + 1;
            if (i2 >= 1000) {
                if (f216e != null) {
                    f216e.a(f218g);
                }
                h = 0;
                f218g = 0L;
                f217f = false;
            }
        }
    }
}
