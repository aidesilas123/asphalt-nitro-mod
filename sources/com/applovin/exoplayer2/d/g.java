package com.applovin.exoplayer2.d;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface g {

    public static class a {
        public final int cN;

        @Nullable
        public final p.a jj;
        private final CopyOnWriteArrayList<C0028a> tg;

        /* JADX INFO: renamed from: com.applovin.exoplayer2.d.g$a$a, reason: collision with other inner class name */
        private static final class C0028a {
            public Handler jS;
            public g th;

            public C0028a(Handler handler, g gVar) {
                this.jS = handler;
                this.th = gVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private a(CopyOnWriteArrayList<C0028a> copyOnWriteArrayList, int i, @Nullable p.a aVar) {
            this.tg = copyOnWriteArrayList;
            this.cN = i;
            this.jj = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(g gVar, int i) {
            gVar.g(this.cN, this.jj);
            gVar.a(this.cN, this.jj, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(g gVar, Exception exc) {
            gVar.a(this.cN, this.jj, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(g gVar) {
            gVar.d(this.cN, this.jj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(g gVar) {
            gVar.c(this.cN, this.jj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(g gVar) {
            gVar.b(this.cN, this.jj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(g gVar) {
            gVar.a(this.cN, this.jj);
        }

        public void a(Handler handler, g gVar) {
            com.applovin.exoplayer2.l.a.checkNotNull(handler);
            com.applovin.exoplayer2.l.a.checkNotNull(gVar);
            this.tg.add(new C0028a(handler, gVar));
        }

        public void a(g gVar) {
            for (C0028a c0028a : this.tg) {
                if (c0028a.th == gVar) {
                    this.tg.remove(c0028a);
                }
            }
        }

        public void bF(final int i) {
            for (C0028a c0028a : this.tg) {
                final g gVar = c0028a.th;
                ai.a(c0028a.jS, new Runnable() { // from class: com.applovin.exoplayer2.d.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(gVar, i);
                    }
                });
            }
        }

        @CheckResult
        public a h(int i, @Nullable p.a aVar) {
            return new a(this.tg, i, aVar);
        }

        public void hG() {
            for (C0028a c0028a : this.tg) {
                final g gVar = c0028a.th;
                ai.a(c0028a.jS, new Runnable() { // from class: com.applovin.exoplayer2.d.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.e(gVar);
                    }
                });
            }
        }

        public void hH() {
            for (C0028a c0028a : this.tg) {
                final g gVar = c0028a.th;
                ai.a(c0028a.jS, new Runnable() { // from class: com.applovin.exoplayer2.d.i0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(gVar);
                    }
                });
            }
        }

        public void hI() {
            for (C0028a c0028a : this.tg) {
                final g gVar = c0028a.th;
                ai.a(c0028a.jS, new Runnable() { // from class: com.applovin.exoplayer2.d.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(gVar);
                    }
                });
            }
        }

        public void hJ() {
            for (C0028a c0028a : this.tg) {
                final g gVar = c0028a.th;
                ai.a(c0028a.jS, new Runnable() { // from class: com.applovin.exoplayer2.d.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.b(gVar);
                    }
                });
            }
        }

        public void j(final Exception exc) {
            for (C0028a c0028a : this.tg) {
                final g gVar = c0028a.th;
                ai.a(c0028a.jS, new Runnable() { // from class: com.applovin.exoplayer2.d.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(gVar, exc);
                    }
                });
            }
        }
    }

    void a(int i, @Nullable p.a aVar);

    void a(int i, @Nullable p.a aVar, int i2);

    void a(int i, @Nullable p.a aVar, Exception exc);

    void b(int i, @Nullable p.a aVar);

    void c(int i, @Nullable p.a aVar);

    void d(int i, @Nullable p.a aVar);

    @Deprecated
    void g(int i, @Nullable p.a aVar);
}
