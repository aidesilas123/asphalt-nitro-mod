package com.mbridge.msdk.e.a;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ExecutorDelivery.java */
/* JADX INFO: loaded from: classes4.dex */
public final class f implements q {
    private final Executor a;

    /* JADX INFO: compiled from: ExecutorDelivery.java */
    private static class a implements Runnable {
        private final m a;
        private final o b;
        private final Runnable c;

        public a(m mVar, o oVar, Runnable runnable) {
            this.a = mVar;
            this.b = oVar;
            this.c = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.a.l()) {
                this.a.a("canceled-at-delivery");
                return;
            }
            if (this.b.a()) {
                this.a.a(this.b.a);
            } else {
                this.a.a(this.b.c);
            }
            if (!this.b.f6963d) {
                this.a.a("done");
            }
            Runnable runnable = this.c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public f(final Handler handler) {
        this.a = new Executor() { // from class: com.mbridge.msdk.e.a.f.1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public f(Executor executor) {
        this.a = executor;
    }

    @Override // com.mbridge.msdk.e.a.q
    public final void a(m<?> mVar, o<?> oVar) {
        a(mVar, oVar, null);
    }

    @Override // com.mbridge.msdk.e.a.q
    public final void a(m<?> mVar, o<?> oVar, Runnable runnable) {
        mVar.s();
        this.a.execute(new a(mVar, oVar, runnable));
    }

    @Override // com.mbridge.msdk.e.a.q
    public final void a(m<?> mVar, u uVar) {
        this.a.execute(new a(mVar, o.a(uVar), null));
    }
}
