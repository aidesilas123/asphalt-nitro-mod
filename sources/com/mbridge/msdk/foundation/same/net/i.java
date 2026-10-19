package com.mbridge.msdk.foundation.same.net;

import android.os.Process;
import com.mbridge.msdk.foundation.same.net.stack.OkHttpStack;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: NetworkDispatcher.java */
/* JADX INFO: loaded from: classes4.dex */
public class i {
    private static final String a = "i";
    private com.mbridge.msdk.foundation.same.net.stack.b b;
    private h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f7155d;

    public i(c cVar) {
        a();
        this.c = new com.mbridge.msdk.foundation.same.net.f.a(this.b, cVar);
        this.f7155d = cVar;
    }

    public i(c cVar, com.mbridge.msdk.foundation.same.net.stack.b bVar) {
        if (bVar == null) {
            a();
        } else {
            this.b = bVar;
        }
        this.c = new com.mbridge.msdk.foundation.same.net.f.a(this.b, cVar);
        this.f7155d = cVar;
    }

    private void a() {
        try {
            if (com.mbridge.msdk.f.b.b()) {
                this.b = new com.mbridge.msdk.foundation.same.net.stack.a();
                return;
            }
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
        this.b = new OkHttpStack();
    }

    public final void a(j jVar) {
        Process.setThreadPriority(10);
        try {
            this.f7155d.c(jVar);
            if (jVar.d()) {
                jVar.a("network-discard-cancelled");
                this.f7155d.b(jVar);
                this.f7155d.a(jVar);
            } else {
                this.f7155d.d(jVar);
                this.f7155d.a((j<?>) jVar, jVar.a(this.c.a(jVar)));
            }
        } catch (com.mbridge.msdk.foundation.same.net.b.a e2) {
            this.f7155d.a((j<?>) jVar, e2);
        } catch (Exception e3) {
            aa.d(a, "Unhandled exception " + e3.getMessage());
            this.f7155d.a((j<?>) jVar, new com.mbridge.msdk.foundation.same.net.b.a(4, null));
        }
    }
}
