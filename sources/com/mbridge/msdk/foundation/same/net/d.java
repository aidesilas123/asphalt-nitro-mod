package com.mbridge.msdk.foundation.same.net;

import android.os.Handler;
import com.mbridge.msdk.foundation.tools.aa;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ExecutorDelivery.java */
/* JADX INFO: loaded from: classes4.dex */
public class d implements c {
    private final String a = d.class.getSimpleName();
    private final Executor b;

    /* JADX INFO: compiled from: ExecutorDelivery.java */
    private class a implements Runnable {
        private final j b;
        private final l c;

        public a(j jVar, l lVar) {
            this.b = jVar;
            this.c = lVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.b.d()) {
                this.b.a("canceled-at-delivery");
                this.b.o();
                return;
            }
            l lVar = this.c;
            com.mbridge.msdk.foundation.same.net.b.a aVar = lVar.b;
            if (aVar == null) {
                this.b.a(lVar);
            } else {
                this.b.a(aVar);
            }
            this.b.a("done");
            this.b.q();
        }
    }

    public d(final Handler handler) {
        this.b = new Executor() { // from class: com.mbridge.msdk.foundation.same.net.d.1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public final void a(final j<?> jVar) {
        aa.b(this.a, "postFinish request=" + jVar.b());
        Executor executor = this.b;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.d.2
                @Override // java.lang.Runnable
                public final void run() {
                    jVar.q();
                }
            });
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public final void a(final j<?> jVar, final long j, final long j2) {
        aa.b(this.a, "postDownloadProgress downloadedSize=" + j2 + "/ fileSize=" + j);
        Executor executor = this.b;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.d.7
                @Override // java.lang.Runnable
                public final void run() {
                    jVar.a(j, j2);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public final void a(j<?> jVar, com.mbridge.msdk.foundation.same.net.b.a aVar) {
        aa.b(this.a, "postError error=" + aVar.a);
        if (this.b != null) {
            this.b.execute(new a(jVar, l.a(aVar)));
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public final void a(j<?> jVar, l<?> lVar) {
        aa.b(this.a, "postResponse response=" + lVar.a);
        Executor executor = this.b;
        if (executor != null) {
            executor.execute(new a(jVar, lVar));
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public final void b(final j<?> jVar) {
        aa.b(this.a, "postCancel request=" + jVar.b());
        Executor executor = this.b;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.d.3
                @Override // java.lang.Runnable
                public final void run() {
                    jVar.o();
                }
            });
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public final void c(final j<?> jVar) {
        aa.b(this.a, "postPreExecute request=" + jVar.b());
        Executor executor = this.b;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.d.4
                @Override // java.lang.Runnable
                public final void run() {
                    jVar.p();
                }
            });
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public final void d(final j<?> jVar) {
        aa.b(this.a, "postNetworking request=" + jVar.b());
        Executor executor = this.b;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.d.5
                @Override // java.lang.Runnable
                public final void run() {
                    jVar.s();
                }
            });
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public final void e(final j<?> jVar) {
        aa.b(this.a, "postRetry request=" + jVar.b());
        Executor executor = this.b;
        if (executor != null) {
            executor.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.d.6
                @Override // java.lang.Runnable
                public final void run() {
                    jVar.r();
                }
            });
        }
    }
}
