package com.applovin.exoplayer2.h;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface q {

    public static class a {
        private final long LN;
        public final int cN;

        @Nullable
        public final p.a jj;
        private final CopyOnWriteArrayList<C0040a> tg;

        /* JADX INFO: renamed from: com.applovin.exoplayer2.h.q$a$a, reason: collision with other inner class name */
        private static final class C0040a {
            public q LO;
            public Handler jS;

            public C0040a(Handler handler, q qVar) {
                this.jS = handler;
                this.LO = qVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private a(CopyOnWriteArrayList<C0040a> copyOnWriteArrayList, int i, @Nullable p.a aVar, long j) {
            this.tg = copyOnWriteArrayList;
            this.cN = i;
            this.jj = aVar;
            this.LN = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(q qVar, j jVar, m mVar) {
            qVar.c(this.cN, this.jj, jVar, mVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(q qVar, j jVar, m mVar, IOException iOException, boolean z) {
            qVar.a(this.cN, this.jj, jVar, mVar, iOException, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(q qVar, m mVar) {
            qVar.a(this.cN, this.jj, mVar);
        }

        private long aW(long j) {
            long jF = com.applovin.exoplayer2.h.f(j);
            return jF == C.TIME_UNSET ? C.TIME_UNSET : this.LN + jF;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(q qVar, j jVar, m mVar) {
            qVar.b(this.cN, this.jj, jVar, mVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(q qVar, j jVar, m mVar) {
            qVar.a(this.cN, this.jj, jVar, mVar);
        }

        public void a(int i, @Nullable com.applovin.exoplayer2.v vVar, int i2, @Nullable Object obj, long j) {
            b(new m(1, i, vVar, i2, obj, aW(j), C.TIME_UNSET));
        }

        public void a(Handler handler, q qVar) {
            com.applovin.exoplayer2.l.a.checkNotNull(handler);
            com.applovin.exoplayer2.l.a.checkNotNull(qVar);
            this.tg.add(new C0040a(handler, qVar));
        }

        public void a(j jVar, int i, int i2, @Nullable com.applovin.exoplayer2.v vVar, int i3, @Nullable Object obj, long j, long j2) {
            a(jVar, new m(i, i2, vVar, i3, obj, aW(j), aW(j2)));
        }

        public void a(j jVar, int i, int i2, @Nullable com.applovin.exoplayer2.v vVar, int i3, @Nullable Object obj, long j, long j2, IOException iOException, boolean z) {
            a(jVar, new m(i, i2, vVar, i3, obj, aW(j), aW(j2)), iOException, z);
        }

        public void a(final j jVar, final m mVar) {
            for (C0040a c0040a : this.tg) {
                final q qVar = c0040a.LO;
                ai.a(c0040a.jS, new Runnable() { // from class: com.applovin.exoplayer2.h.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(qVar, jVar, mVar);
                    }
                });
            }
        }

        public void a(final j jVar, final m mVar, final IOException iOException, final boolean z) {
            for (C0040a c0040a : this.tg) {
                final q qVar = c0040a.LO;
                ai.a(c0040a.jS, new Runnable() { // from class: com.applovin.exoplayer2.h.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(qVar, jVar, mVar, iOException, z);
                    }
                });
            }
        }

        public void a(q qVar) {
            for (C0040a c0040a : this.tg) {
                if (c0040a.LO == qVar) {
                    this.tg.remove(c0040a);
                }
            }
        }

        @CheckResult
        public a b(int i, @Nullable p.a aVar, long j) {
            return new a(this.tg, i, aVar, j);
        }

        public void b(j jVar, int i, int i2, @Nullable com.applovin.exoplayer2.v vVar, int i3, @Nullable Object obj, long j, long j2) {
            b(jVar, new m(i, i2, vVar, i3, obj, aW(j), aW(j2)));
        }

        public void b(final j jVar, final m mVar) {
            for (C0040a c0040a : this.tg) {
                final q qVar = c0040a.LO;
                ai.a(c0040a.jS, new Runnable() { // from class: com.applovin.exoplayer2.h.i0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.b(qVar, jVar, mVar);
                    }
                });
            }
        }

        public void b(final m mVar) {
            for (C0040a c0040a : this.tg) {
                final q qVar = c0040a.LO;
                ai.a(c0040a.jS, new Runnable() { // from class: com.applovin.exoplayer2.h.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(qVar, mVar);
                    }
                });
            }
        }

        public void c(j jVar, int i, int i2, @Nullable com.applovin.exoplayer2.v vVar, int i3, @Nullable Object obj, long j, long j2) {
            c(jVar, new m(i, i2, vVar, i3, obj, aW(j), aW(j2)));
        }

        public void c(final j jVar, final m mVar) {
            for (C0040a c0040a : this.tg) {
                final q qVar = c0040a.LO;
                ai.a(c0040a.jS, new Runnable() { // from class: com.applovin.exoplayer2.h.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(qVar, jVar, mVar);
                    }
                });
            }
        }
    }

    void a(int i, @Nullable p.a aVar, j jVar, m mVar);

    void a(int i, @Nullable p.a aVar, j jVar, m mVar, IOException iOException, boolean z);

    void a(int i, @Nullable p.a aVar, m mVar);

    void b(int i, @Nullable p.a aVar, j jVar, m mVar);

    void c(int i, @Nullable p.a aVar, j jVar, m mVar);
}
