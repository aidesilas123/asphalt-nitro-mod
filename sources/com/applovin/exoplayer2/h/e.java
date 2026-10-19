package com.applovin.exoplayer2.h;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.q;
import com.applovin.exoplayer2.l.ai;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class e<T> extends com.applovin.exoplayer2.h.a {

    @Nullable
    private Handler I;
    private final HashMap<T, b<T>> fZ = new HashMap<>();

    @Nullable
    private com.applovin.exoplayer2.k.aa gc;

    private final class a implements com.applovin.exoplayer2.d.g, q {
        private q.a fX;
        private g.a fY;
        private final T ix;

        public a(T t) {
            this.fX = e.this.e((p.a) null);
            this.fY = e.this.f((p.a) null);
            this.ix = t;
        }

        private m a(m mVar) {
            long jB = e.this.b(this.ix, mVar.LJ);
            long jB2 = e.this.b(this.ix, mVar.LK);
            return (jB == mVar.LJ && jB2 == mVar.LK) ? mVar : new m(mVar.gn, mVar.V, mVar.LG, mVar.LH, mVar.LI, jB, jB2);
        }

        private boolean e(int i, @Nullable p.a aVar) {
            p.a aVarA;
            if (aVar != null) {
                aVarA = e.this.a(this.ix, aVar);
                if (aVarA == null) {
                    return false;
                }
            } else {
                aVarA = null;
            }
            int iC = e.this.c(this.ix, i);
            q.a aVar2 = this.fX;
            if (aVar2.cN != iC || !ai.r(aVar2.jj, aVarA)) {
                this.fX = e.this.a(iC, aVarA, 0L);
            }
            g.a aVar3 = this.fY;
            if (aVar3.cN == iC && ai.r(aVar3.jj, aVarA)) {
                return true;
            }
            this.fY = e.this.i(iC, aVarA);
            return true;
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, @Nullable p.a aVar) {
            if (e(i, aVar)) {
                this.fY.hG();
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, @Nullable p.a aVar, int i2) {
            if (e(i, aVar)) {
                this.fY.bF(i2);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, @Nullable p.a aVar, j jVar, m mVar) {
            if (e(i, aVar)) {
                this.fX.a(jVar, a(mVar));
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, @Nullable p.a aVar, j jVar, m mVar, IOException iOException, boolean z) {
            if (e(i, aVar)) {
                this.fX.a(jVar, a(mVar), iOException, z);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, @Nullable p.a aVar, m mVar) {
            if (e(i, aVar)) {
                this.fX.b(a(mVar));
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, @Nullable p.a aVar, Exception exc) {
            if (e(i, aVar)) {
                this.fY.j(exc);
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void b(int i, @Nullable p.a aVar) {
            if (e(i, aVar)) {
                this.fY.hH();
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void b(int i, @Nullable p.a aVar, j jVar, m mVar) {
            if (e(i, aVar)) {
                this.fX.b(jVar, a(mVar));
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void c(int i, @Nullable p.a aVar) {
            if (e(i, aVar)) {
                this.fY.hI();
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void c(int i, @Nullable p.a aVar, j jVar, m mVar) {
            if (e(i, aVar)) {
                this.fX.c(jVar, a(mVar));
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void d(int i, @Nullable p.a aVar) {
            if (e(i, aVar)) {
                this.fY.hJ();
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public /* synthetic */ void g(int i, p.a aVar) {
            com.applovin.exoplayer2.d.n0.g(this, i, aVar);
        }
    }

    private static final class b<T> {
        public final e<T>.a Lb;
        public final p gf;
        public final p.b gg;

        public b(p pVar, p.b bVar, e<T>.a aVar) {
            this.gf = pVar;
            this.gg = bVar;
            this.Lb = aVar;
        }
    }

    protected e() {
    }

    @Nullable
    protected p.a a(T t, p.a aVar) {
        return aVar;
    }

    protected final void a(final T t, p pVar) {
        com.applovin.exoplayer2.l.a.checkArgument(!this.fZ.containsKey(t));
        p.b bVar = new p.b() { // from class: com.applovin.exoplayer2.h.d0
            @Override // com.applovin.exoplayer2.h.p.b
            public final void onSourceInfoRefreshed(p pVar2, ba baVar) {
                this.a.b(t, pVar2, baVar);
            }
        };
        a aVar = new a(t);
        this.fZ.put(t, new b<>(pVar, bVar, aVar));
        pVar.a((Handler) com.applovin.exoplayer2.l.a.checkNotNull(this.I), aVar);
        pVar.b((Handler) com.applovin.exoplayer2.l.a.checkNotNull(this.I), aVar);
        pVar.a(bVar, this.gc);
        if (isEnabled()) {
            return;
        }
        pVar.b(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract void b(T t, p pVar, ba baVar);

    protected long b(T t, long j) {
        return j;
    }

    @Override // com.applovin.exoplayer2.h.a
    @CallSuper
    protected void b(@Nullable com.applovin.exoplayer2.k.aa aaVar) {
        this.gc = aaVar;
        this.I = ai.pX();
    }

    protected int c(T t, int i) {
        return i;
    }

    @Override // com.applovin.exoplayer2.h.a
    @CallSuper
    protected void kH() {
        for (b<T> bVar : this.fZ.values()) {
            bVar.gf.a(bVar.gg);
        }
    }

    @Override // com.applovin.exoplayer2.h.a
    @CallSuper
    protected void kI() {
        for (b<T> bVar : this.fZ.values()) {
            bVar.gf.b(bVar.gg);
        }
    }

    @Override // com.applovin.exoplayer2.h.a
    @CallSuper
    protected void kJ() {
        for (b<T> bVar : this.fZ.values()) {
            bVar.gf.c(bVar.gg);
            bVar.gf.a(bVar.Lb);
            bVar.gf.f(bVar.Lb);
        }
        this.fZ.clear();
    }

    @Override // com.applovin.exoplayer2.h.p
    @CallSuper
    public void kS() throws IOException {
        Iterator<b<T>> it = this.fZ.values().iterator();
        while (it.hasNext()) {
            it.next().gf.kS();
        }
    }
}
