package com.applovin.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.q;
import com.applovin.exoplayer2.h.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class ah {
    private final d fW;
    private final q.a fX;
    private final g.a fY;
    private final HashMap<c, b> fZ;
    private final Set<c> ga;
    private boolean gb;

    @Nullable
    private com.applovin.exoplayer2.k.aa gc;
    private com.applovin.exoplayer2.h.z C = new z.a(0);
    private final IdentityHashMap<com.applovin.exoplayer2.h.n, c> fU = new IdentityHashMap<>();
    private final Map<Object, c> fV = new HashMap();
    private final List<c> cM = new ArrayList();

    private final class a implements com.applovin.exoplayer2.d.g, com.applovin.exoplayer2.h.q {
        private q.a fX;
        private g.a fY;
        private final c gd;

        public a(c cVar) {
            this.fX = ah.this.fX;
            this.fY = ah.this.fY;
            this.gd = cVar;
        }

        private boolean e(int i, @Nullable p.a aVar) {
            p.a aVarA;
            if (aVar != null) {
                aVarA = ah.a(this.gd, aVar);
                if (aVarA == null) {
                    return false;
                }
            } else {
                aVarA = null;
            }
            int iA = ah.a(this.gd, i);
            q.a aVar2 = this.fX;
            if (aVar2.cN != iA || !com.applovin.exoplayer2.l.ai.r(aVar2.jj, aVarA)) {
                this.fX = ah.this.fX.b(iA, aVarA, 0L);
            }
            g.a aVar3 = this.fY;
            if (aVar3.cN == iA && com.applovin.exoplayer2.l.ai.r(aVar3.jj, aVarA)) {
                return true;
            }
            this.fY = ah.this.fY.h(iA, aVarA);
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
        public void a(int i, @Nullable p.a aVar, com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar) {
            if (e(i, aVar)) {
                this.fX.a(jVar, mVar);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, @Nullable p.a aVar, com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar, IOException iOException, boolean z) {
            if (e(i, aVar)) {
                this.fX.a(jVar, mVar, iOException, z);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, @Nullable p.a aVar, com.applovin.exoplayer2.h.m mVar) {
            if (e(i, aVar)) {
                this.fX.b(mVar);
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
        public void b(int i, @Nullable p.a aVar, com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar) {
            if (e(i, aVar)) {
                this.fX.b(jVar, mVar);
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void c(int i, @Nullable p.a aVar) {
            if (e(i, aVar)) {
                this.fY.hI();
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void c(int i, @Nullable p.a aVar, com.applovin.exoplayer2.h.j jVar, com.applovin.exoplayer2.h.m mVar) {
            if (e(i, aVar)) {
                this.fX.c(jVar, mVar);
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

    private static final class b {
        public final com.applovin.exoplayer2.h.p gf;
        public final p.b gg;
        public final a gh;

        public b(com.applovin.exoplayer2.h.p pVar, p.b bVar, a aVar) {
            this.gf = pVar;
            this.gg = bVar;
            this.gh = aVar;
        }
    }

    static final class c implements ag {
        public final com.applovin.exoplayer2.h.l gi;
        public int gk;
        public boolean gl;
        public final List<p.a> gj = new ArrayList();
        public final Object ch = new Object();

        public c(com.applovin.exoplayer2.h.p pVar, boolean z) {
            this.gi = new com.applovin.exoplayer2.h.l(pVar, z);
        }

        public void U(int i) {
            this.gk = i;
            this.gl = false;
            this.gj.clear();
        }

        @Override // com.applovin.exoplayer2.ag
        public Object be() {
            return this.ch;
        }

        @Override // com.applovin.exoplayer2.ag
        public ba bf() {
            return this.gi.bf();
        }
    }

    public interface d {
        void bi();
    }

    public ah(d dVar, @Nullable com.applovin.exoplayer2.a.a aVar, Handler handler) {
        this.fW = dVar;
        q.a aVar2 = new q.a();
        this.fX = aVar2;
        g.a aVar3 = new g.a();
        this.fY = aVar3;
        this.fZ = new HashMap<>();
        this.ga = new HashSet();
        if (aVar != null) {
            aVar2.a(handler, aVar);
            aVar3.a(handler, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(c cVar, int i) {
        return i + cVar.gk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static p.a a(c cVar, p.a aVar) {
        for (int i = 0; i < cVar.gj.size(); i++) {
            if (cVar.gj.get(i).LL == aVar.LL) {
                return aVar.G(a(cVar, aVar.gM));
            }
        }
        return null;
    }

    private static Object a(c cVar, Object obj) {
        return com.applovin.exoplayer2.a.a(cVar.ch, obj);
    }

    private void a(c cVar) {
        this.ga.add(cVar);
        b bVar = this.fZ.get(cVar);
        if (bVar != null) {
            bVar.gf.a(bVar.gg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.exoplayer2.h.p pVar, ba baVar) {
        this.fW.bi();
    }

    private void b(c cVar) {
        b bVar = this.fZ.get(cVar);
        if (bVar != null) {
            bVar.gf.b(bVar.gg);
        }
    }

    private void c(c cVar) {
        com.applovin.exoplayer2.h.l lVar = cVar.gi;
        p.b bVar = new p.b() { // from class: com.applovin.exoplayer2.h0
            @Override // com.applovin.exoplayer2.h.p.b
            public final void onSourceInfoRefreshed(com.applovin.exoplayer2.h.p pVar, ba baVar) {
                this.a.a(pVar, baVar);
            }
        };
        a aVar = new a(cVar);
        this.fZ.put(cVar, new b(lVar, bVar, aVar));
        lVar.a(com.applovin.exoplayer2.l.ai.pY(), aVar);
        lVar.b(com.applovin.exoplayer2.l.ai.pY(), aVar);
        lVar.a(bVar, this.gc);
    }

    private void cz() {
        Iterator<c> it = this.ga.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next.gj.isEmpty()) {
                b(next);
                it.remove();
            }
        }
    }

    private void d(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            c cVarRemove = this.cM.remove(i3);
            this.fV.remove(cVarRemove.ch);
            e(i3, -cVarRemove.gi.bf().cP());
            cVarRemove.gl = true;
            if (this.gb) {
                d(cVarRemove);
            }
        }
    }

    private void d(c cVar) {
        if (cVar.gl && cVar.gj.isEmpty()) {
            b bVar = (b) com.applovin.exoplayer2.l.a.checkNotNull(this.fZ.remove(cVar));
            bVar.gf.c(bVar.gg);
            bVar.gf.a(bVar.gh);
            bVar.gf.f(bVar.gh);
            this.ga.remove(cVar);
        }
    }

    private void e(int i, int i2) {
        while (i < this.cM.size()) {
            this.cM.get(i).gk += i2;
            i++;
        }
    }

    private static Object f(Object obj) {
        return com.applovin.exoplayer2.a.a(obj);
    }

    private static Object g(Object obj) {
        return com.applovin.exoplayer2.a.b(obj);
    }

    public ba a(int i, int i2, int i3, com.applovin.exoplayer2.h.z zVar) {
        com.applovin.exoplayer2.l.a.checkArgument(i >= 0 && i <= i2 && i2 <= cx() && i3 >= 0);
        this.C = zVar;
        if (i == i2 || i == i3) {
            return cy();
        }
        int iMin = Math.min(i, i3);
        int iMax = Math.max(((i2 - i) + i3) - 1, i2 - 1);
        int iCP = this.cM.get(iMin).gk;
        com.applovin.exoplayer2.l.ai.a(this.cM, i, i2, i3);
        while (iMin <= iMax) {
            c cVar = this.cM.get(iMin);
            cVar.gk = iCP;
            iCP += cVar.gi.bf().cP();
            iMin++;
        }
        return cy();
    }

    public ba a(int i, List<c> list, com.applovin.exoplayer2.h.z zVar) {
        if (!list.isEmpty()) {
            this.C = zVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                c cVar = list.get(i2 - i);
                if (i2 > 0) {
                    c cVar2 = this.cM.get(i2 - 1);
                    cVar.U(cVar2.gk + cVar2.gi.bf().cP());
                } else {
                    cVar.U(0);
                }
                e(i2, cVar.gi.bf().cP());
                this.cM.add(i2, cVar);
                this.fV.put(cVar.ch, cVar);
                if (this.gb) {
                    c(cVar);
                    if (this.fU.isEmpty()) {
                        this.ga.add(cVar);
                    } else {
                        b(cVar);
                    }
                }
            }
        }
        return cy();
    }

    public ba a(List<c> list, com.applovin.exoplayer2.h.z zVar) {
        d(0, this.cM.size());
        return a(this.cM.size(), list, zVar);
    }

    public com.applovin.exoplayer2.h.n a(p.a aVar, com.applovin.exoplayer2.k.b bVar, long j) {
        Object objF = f(aVar.gM);
        p.a aVarG = aVar.G(g(aVar.gM));
        c cVar = (c) com.applovin.exoplayer2.l.a.checkNotNull(this.fV.get(objF));
        a(cVar);
        cVar.gj.add(aVarG);
        com.applovin.exoplayer2.h.k kVarA = cVar.gi.a(aVarG, bVar, j);
        this.fU.put(kVarA, cVar);
        cz();
        return kVarA;
    }

    public void a(@Nullable com.applovin.exoplayer2.k.aa aaVar) {
        com.applovin.exoplayer2.l.a.checkState(!this.gb);
        this.gc = aaVar;
        for (int i = 0; i < this.cM.size(); i++) {
            c cVar = this.cM.get(i);
            c(cVar);
            this.ga.add(cVar);
        }
        this.gb = true;
    }

    public ba b(com.applovin.exoplayer2.h.z zVar) {
        int iCx = cx();
        if (zVar.lG() != iCx) {
            zVar = zVar.lJ().E(0, iCx);
        }
        this.C = zVar;
        return cy();
    }

    public ba c(int i, int i2, com.applovin.exoplayer2.h.z zVar) {
        com.applovin.exoplayer2.l.a.checkArgument(i >= 0 && i <= i2 && i2 <= cx());
        this.C = zVar;
        d(i, i2);
        return cy();
    }

    public boolean cw() {
        return this.gb;
    }

    public int cx() {
        return this.cM.size();
    }

    public ba cy() {
        if (this.cM.isEmpty()) {
            return ba.iw;
        }
        int iCP = 0;
        for (int i = 0; i < this.cM.size(); i++) {
            c cVar = this.cM.get(i);
            cVar.gk = iCP;
            iCP += cVar.gi.bf().cP();
        }
        return new ap(this.cM, this.C);
    }

    public void f(com.applovin.exoplayer2.h.n nVar) {
        c cVar = (c) com.applovin.exoplayer2.l.a.checkNotNull(this.fU.remove(nVar));
        cVar.gi.f(nVar);
        cVar.gj.remove(((com.applovin.exoplayer2.h.k) nVar).fE);
        if (!this.fU.isEmpty()) {
            cz();
        }
        d(cVar);
    }

    public void release() {
        for (b bVar : this.fZ.values()) {
            try {
                bVar.gf.c(bVar.gg);
            } catch (RuntimeException e2) {
                com.applovin.exoplayer2.l.q.c("MediaSourceList", "Failed to release child source.", e2);
            }
            bVar.gf.a(bVar.gh);
            bVar.gf.f(bVar.gh);
        }
        this.fZ.clear();
        this.ga.clear();
        this.gb = false;
    }
}
