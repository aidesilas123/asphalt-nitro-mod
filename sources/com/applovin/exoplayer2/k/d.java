package com.applovin.exoplayer2.k;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.k.d;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface d {

    public interface a {

        /* JADX INFO: renamed from: com.applovin.exoplayer2.k.d$a$a, reason: collision with other inner class name */
        public static final class C0050a {
            private final CopyOnWriteArrayList<C0051a> Zl = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: com.applovin.exoplayer2.k.d$a$a$a, reason: collision with other inner class name */
            static final class C0051a {
                private final a Zm;
                private boolean cw;
                private final Handler jS;

                public C0051a(Handler handler, a aVar) {
                    this.jS = handler;
                    this.Zm = aVar;
                }

                public void release() {
                    this.cw = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void a(C0051a c0051a, int i, long j, long j2) {
                c0051a.Zm.b(i, j, j2);
            }

            public void b(Handler handler, a aVar) {
                com.applovin.exoplayer2.l.a.checkNotNull(handler);
                com.applovin.exoplayer2.l.a.checkNotNull(aVar);
                b(aVar);
                this.Zl.add(new C0051a(handler, aVar));
            }

            public void b(a aVar) {
                for (C0051a c0051a : this.Zl) {
                    if (c0051a.Zm == aVar) {
                        c0051a.release();
                        this.Zl.remove(c0051a);
                    }
                }
            }

            public void g(final int i, final long j, final long j2) {
                for (final C0051a c0051a : this.Zl) {
                    if (!c0051a.cw) {
                        c0051a.jS.post(new Runnable() { // from class: com.applovin.exoplayer2.k.a0
                            @Override // java.lang.Runnable
                            public final void run() {
                                d.a.C0050a.a(c0051a, i, j, j2);
                            }
                        });
                    }
                }
            }
        }

        void b(int i, long j, long j2);
    }

    void a(Handler handler, a aVar);

    void a(a aVar);

    @Nullable
    aa od();
}
