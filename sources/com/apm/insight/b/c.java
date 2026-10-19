package com.apm.insight.b;

import android.os.SystemClock;
import com.apm.insight.runtime.p;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static long b;
    private final b a;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f193d;

    c(b bVar) {
        Runnable runnable = new Runnable() { // from class: com.apm.insight.b.c.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                if (c.this.c) {
                    return;
                }
                c.this.a.d();
                long unused = c.b = SystemClock.uptimeMillis();
                f.a();
                p.b().a(c.this.f193d, 500L);
                com.apm.insight.runtime.b.a(c.b);
            }
        };
        this.f193d = runnable;
        this.a = bVar;
        p.b().a(runnable, 5000L);
    }

    public static boolean c() {
        return SystemClock.uptimeMillis() - b <= 15000;
    }

    public void a() {
        if (this.c) {
            return;
        }
        p.b().a(this.f193d, 5000L);
    }

    public void b() {
        this.c = true;
    }
}
