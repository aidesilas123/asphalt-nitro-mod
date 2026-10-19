package com.applovin.exoplayer2.e.h;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.work.WorkRequest;
import com.applovin.exoplayer2.e.k;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class a implements f {
    private long BA;
    private long BB;
    private final e Br;
    private final long Bs;
    private final long Bt;
    private final h Bu;
    private long Bv;
    private long Bw;
    private long Bx;
    private long By;
    private long Bz;
    private int Z;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.e.h.a$a, reason: collision with other inner class name */
    private final class C0034a implements v {
        private C0034a() {
        }

        @Override // com.applovin.exoplayer2.e.v
        public v.a ai(long j) {
            return new v.a(new w(j, ai.b((a.this.Bs + ((a.this.Bu.aF(j) * (a.this.Bt - a.this.Bs)) / a.this.Bv)) - WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, a.this.Bs, a.this.Bt - 1)));
        }

        @Override // com.applovin.exoplayer2.e.v
        public long dd() {
            return a.this.Bu.aE(a.this.Bv);
        }

        @Override // com.applovin.exoplayer2.e.v
        public boolean hU() {
            return true;
        }
    }

    public a(h hVar, long j, long j2, long j3, long j4, boolean z) {
        com.applovin.exoplayer2.l.a.checkArgument(j >= 0 && j2 > j);
        this.Bu = hVar;
        this.Bs = j;
        this.Bt = j2;
        if (j3 == j2 - j || z) {
            this.Bv = j4;
            this.Z = 4;
        } else {
            this.Z = 0;
        }
        this.Br = new e();
    }

    private long O(com.applovin.exoplayer2.e.i iVar) throws IOException {
        if (this.By == this.Bz) {
            return -1L;
        }
        long jIe = iVar.ie();
        if (!this.Br.c(iVar, this.Bz)) {
            long j = this.By;
            if (j != jIe) {
                return j;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.Br.f(iVar, false);
        iVar.ic();
        long j2 = this.Bx;
        e eVar = this.Br;
        long j3 = eVar.BN;
        long j4 = j2 - j3;
        int i = eVar.BT + eVar.BU;
        if (0 <= j4 && j4 < 72000) {
            return -1L;
        }
        if (j4 < 0) {
            this.Bz = jIe;
            this.BB = j3;
        } else {
            this.By = iVar.ie() + ((long) i);
            this.BA = this.Br.BN;
        }
        long j5 = this.Bz;
        long j6 = this.By;
        if (j5 - j6 < 100000) {
            this.Bz = j6;
            return j6;
        }
        long jIe2 = iVar.ie() - (((long) i) * (j4 <= 0 ? 2L : 1L));
        long j7 = this.Bz;
        long j8 = this.By;
        return ai.b(jIe2 + ((j4 * (j7 - j8)) / (this.BB - this.BA)), j8, j7 - 1);
    }

    private void P(com.applovin.exoplayer2.e.i iVar) throws IOException {
        while (true) {
            this.Br.T(iVar);
            this.Br.f(iVar, false);
            e eVar = this.Br;
            if (eVar.BN > this.Bx) {
                iVar.ic();
                return;
            } else {
                iVar.bH(eVar.BT + eVar.BU);
                this.By = iVar.ie();
                this.BA = this.Br.BN;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.h.f
    public long N(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int i = this.Z;
        if (i == 0) {
            long jIe = iVar.ie();
            this.Bw = jIe;
            this.Z = 1;
            long j = this.Bt - 65307;
            if (j > jIe) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long jO = O(iVar);
                if (jO != -1) {
                    return jO;
                }
                this.Z = 3;
            } else if (i != 3) {
                if (i == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            P(iVar);
            this.Z = 4;
            return -(this.BA + 2);
        }
        this.Bv = Q(iVar);
        this.Z = 4;
        return this.Bw;
    }

    @VisibleForTesting
    long Q(com.applovin.exoplayer2.e.i iVar) throws IOException {
        this.Br.Y();
        if (!this.Br.T(iVar)) {
            throw new EOFException();
        }
        this.Br.f(iVar, false);
        e eVar = this.Br;
        iVar.bH(eVar.BT + eVar.BU);
        long j = this.Br.BN;
        while (true) {
            e eVar2 = this.Br;
            if ((eVar2.bs & 4) == 4 || !eVar2.T(iVar) || iVar.ie() >= this.Bt || !this.Br.f(iVar, true)) {
                break;
            }
            e eVar3 = this.Br;
            if (!k.a(iVar, eVar3.BT + eVar3.BU)) {
                break;
            }
            j = this.Br.BN;
        }
        return j;
    }

    @Override // com.applovin.exoplayer2.e.h.f
    public void aC(long j) {
        this.Bx = ai.b(j, 0L, this.Bv - 1);
        this.Z = 2;
        this.By = this.Bs;
        this.Bz = this.Bt;
        this.BA = 0L;
        this.BB = this.Bv;
    }

    @Override // com.applovin.exoplayer2.e.h.f
    @Nullable
    /* JADX INFO: renamed from: iW, reason: merged with bridge method [inline-methods] */
    public C0034a iX() {
        if (this.Bv != 0) {
            return new C0034a();
        }
        return null;
    }
}
