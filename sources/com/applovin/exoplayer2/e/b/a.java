package com.applovin.exoplayer2.e.b;

import com.applovin.exoplayer2.e.a;
import com.applovin.exoplayer2.e.b0;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.m;
import com.applovin.exoplayer2.e.p;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class a extends com.applovin.exoplayer2.e.a {

    /* JADX INFO: renamed from: com.applovin.exoplayer2.e.b.a$a, reason: collision with other inner class name */
    private static final class C0030a implements a.f {
        private final p uz;
        private final int vK;
        private final m.a vL;

        private C0030a(p pVar, int i) {
            this.uz = pVar;
            this.vK = i;
            this.vL = new m.a();
        }

        private long i(i iVar) throws IOException {
            while (iVar.id() < iVar.mo28if() - 6 && !m.a(iVar, this.uz, this.vK, this.vL)) {
                iVar.bI(1);
            }
            if (iVar.id() < iVar.mo28if() - 6) {
                return this.vL.uy;
            }
            iVar.bI((int) (iVar.mo28if() - iVar.id()));
            return this.uz.uI;
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public a.e b(i iVar, long j) throws IOException {
            long jIe = iVar.ie();
            long jI = i(iVar);
            long jId = iVar.id();
            iVar.bI(Math.max(6, this.uz.uD));
            long jI2 = i(iVar);
            return (jI > j || jI2 <= j) ? jI2 <= j ? a.e.n(jI2, iVar.id()) : a.e.m(jI, jIe) : a.e.aj(jId);
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public /* synthetic */ void ib() {
            b0.a(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(final p pVar, int i, long j, long j2) {
        super(new a.d() { // from class: com.applovin.exoplayer2.e.b.d
            @Override // com.applovin.exoplayer2.e.a.d
            public final long timeUsToTargetTime(long j3) {
                return pVar.an(j3);
            }
        }, new C0030a(pVar, i), pVar.dd(), 0L, pVar.uI, j, j2, pVar.ii(), Math.max(6, pVar.uD));
        Objects.requireNonNull(pVar);
    }
}
