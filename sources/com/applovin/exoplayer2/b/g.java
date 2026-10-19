package com.applovin.exoplayer2.b;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;

/* JADX INFO: loaded from: classes.dex */
public interface g {

    public static final class a {

        @Nullable
        private final Handler jS;

        @Nullable
        private final g jT;

        public a(@Nullable Handler handler, @Nullable g gVar) {
            this.jS = gVar != null ? (Handler) com.applovin.exoplayer2.l.a.checkNotNull(handler) : null;
            this.jT = gVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void D(long j) {
            ((g) ai.R(this.jT)).z(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void E(boolean z) {
            ((g) ai.R(this.jT)).A(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(int i, long j, long j2) {
            ((g) ai.R(this.jT)).a(i, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.c.h hVar) {
            ((g) ai.R(this.jT)).c(vVar);
            ((g) ai.R(this.jT)).b(vVar, hVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(String str, long j, long j2) {
            ((g) ai.R(this.jT)).b(str, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Exception exc) {
            ((g) ai.R(this.jT)).c(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(com.applovin.exoplayer2.c.e eVar) {
            eVar.he();
            ((g) ai.R(this.jT)).d(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Exception exc) {
            ((g) ai.R(this.jT)).b(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(com.applovin.exoplayer2.c.e eVar) {
            ((g) ai.R(this.jT)).c(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(String str) {
            ((g) ai.R(this.jT)).s(str);
        }

        public void C(final long j) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.D(j);
                    }
                });
            }
        }

        public void D(final boolean z) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.E(z);
                    }
                });
            }
        }

        public void c(final int i, final long j, final long j2) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(i, j, j2);
                    }
                });
            }
        }

        public void c(final com.applovin.exoplayer2.v vVar, @Nullable final com.applovin.exoplayer2.c.h hVar) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.h0
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
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.j0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(str, j, j2);
                    }
                });
            }
        }

        public void d(final Exception exc) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.g(exc);
                    }
                });
            }
        }

        public void e(final com.applovin.exoplayer2.c.e eVar) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.i0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.h(eVar);
                    }
                });
            }
        }

        public void e(final Exception exc) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.f(exc);
                    }
                });
            }
        }

        public void f(final com.applovin.exoplayer2.c.e eVar) {
            eVar.he();
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.g(eVar);
                    }
                });
            }
        }

        public void t(final String str) {
            Handler handler = this.jS;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.u(str);
                    }
                });
            }
        }
    }

    void A(boolean z);

    void a(int i, long j, long j2);

    void b(com.applovin.exoplayer2.v vVar, @Nullable com.applovin.exoplayer2.c.h hVar);

    void b(Exception exc);

    void b(String str, long j, long j2);

    void c(com.applovin.exoplayer2.c.e eVar);

    @Deprecated
    void c(com.applovin.exoplayer2.v vVar);

    void c(Exception exc);

    void d(com.applovin.exoplayer2.c.e eVar);

    void s(String str);

    void z(long j);
}
