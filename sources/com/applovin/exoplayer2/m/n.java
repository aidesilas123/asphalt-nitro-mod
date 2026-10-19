package com.applovin.exoplayer2.m;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;

/* JADX INFO: loaded from: classes.dex */
public interface n {

    public static final class a {

        @Nullable
        private final n afj;

        @Nullable
        private final Handler jS;

        public a(@Nullable Handler handler, @Nullable n nVar) {
            this.jS = nVar != null ? (Handler) com.applovin.exoplayer2.l.a.checkNotNull(handler) : null;
            this.afj = nVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void bp(String str) {
            ((n) ai.R(this.afj)).r(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(o oVar) {
            ((n) ai.R(this.afj)).a(oVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Object obj, long j) {
            ((n) ai.R(this.afj)).a(obj, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.c.h hVar) {
            ((n) ai.R(this.afj)).y(vVar);
            ((n) ai.R(this.afj)).a(vVar, hVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(String str, long j, long j2) {
            ((n) ai.R(this.afj)).a(str, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(long j, int i) {
            ((n) ai.R(this.afj)).a(j, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(com.applovin.exoplayer2.c.e eVar) {
            ((n) ai.R(this.afj)).a(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(com.applovin.exoplayer2.c.e eVar) {
            eVar.he();
            ((n) ai.R(this.afj)).b(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(Exception exc) {
            ((n) ai.R(this.afj)).a(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(int i, long j) {
            ((n) ai.R(this.afj)).b(i, j);
        }

        public void T(final Object obj) {
            if (this.jS != null) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.jS.post(new Runnable() { // from class: com.applovin.exoplayer2.m.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(obj, jElapsedRealtime);
                    }
                });
            }
        }

        public void b(final o oVar) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(oVar);
                    }
                });
            }
        }

        public void c(final com.applovin.exoplayer2.v vVar, @Nullable final com.applovin.exoplayer2.c.h hVar) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.z
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(vVar, hVar);
                    }
                });
            }
        }

        public void c(final String str, final long j, final long j2) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(str, j, j2);
                    }
                });
            }
        }

        public void e(final com.applovin.exoplayer2.c.e eVar) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.h(eVar);
                    }
                });
            }
        }

        public void f(final long j, final int i) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.g(j, i);
                    }
                });
            }
        }

        public void f(final com.applovin.exoplayer2.c.e eVar) {
            eVar.he();
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.i(eVar);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.l(exc);
                    }
                });
            }
        }

        public void l(final int i, final long j) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.m(i, j);
                    }
                });
            }
        }

        public void t(final String str) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.bp(str);
                    }
                });
            }
        }
    }

    void a(long j, int i);

    void a(com.applovin.exoplayer2.c.e eVar);

    void a(o oVar);

    void a(com.applovin.exoplayer2.v vVar, @Nullable com.applovin.exoplayer2.c.h hVar);

    void a(Exception exc);

    void a(Object obj, long j);

    void a(String str, long j, long j2);

    void b(int i, long j);

    void b(com.applovin.exoplayer2.c.e eVar);

    void r(String str);

    @Deprecated
    void y(com.applovin.exoplayer2.v vVar);
}
