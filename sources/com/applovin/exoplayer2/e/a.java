package com.applovin.exoplayer2.e;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    protected final C0029a tB;
    protected final f tC;

    @Nullable
    protected c tD;
    private final int tE;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.e.a$a, reason: collision with other inner class name */
    public static class C0029a implements v {
        private final long fH;
        private final d tF;
        private final long tG;
        private final long tH;
        private final long tI;
        private final long tJ;
        private final long tK;

        public C0029a(d dVar, long j, long j2, long j3, long j4, long j5, long j6) {
            this.tF = dVar;
            this.fH = j;
            this.tG = j2;
            this.tH = j3;
            this.tI = j4;
            this.tJ = j5;
            this.tK = j6;
        }

        @Override // com.applovin.exoplayer2.e.v
        public v.a ai(long j) {
            return new v.a(new w(j, c.a(this.tF.timeUsToTargetTime(j), this.tG, this.tH, this.tI, this.tJ, this.tK)));
        }

        @Override // com.applovin.exoplayer2.e.v
        public long dd() {
            return this.fH;
        }

        @Override // com.applovin.exoplayer2.e.v
        public boolean hU() {
            return true;
        }

        public long timeUsToTargetTime(long j) {
            return this.tF.timeUsToTargetTime(j);
        }
    }

    public static final class b implements d {
        @Override // com.applovin.exoplayer2.e.a.d
        public long timeUsToTargetTime(long j) {
            return j;
        }
    }

    protected static class c {
        private long tG;
        private long tH;
        private long tI;
        private long tJ;
        private final long tK;
        private final long tL;
        private final long tM;
        private long tN;

        protected c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.tL = j;
            this.tM = j2;
            this.tG = j3;
            this.tH = j4;
            this.tI = j5;
            this.tJ = j6;
            this.tK = j7;
            this.tN = a(j2, j3, j4, j5, j6, j7);
        }

        protected static long a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = (long) ((j - j2) * ((j5 - j4) / (j3 - j2)));
            return ai.b(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long hV() {
            return this.tI;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long hW() {
            return this.tJ;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long hX() {
            return this.tM;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long hY() {
            return this.tL;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long hZ() {
            return this.tN;
        }

        private void ia() {
            this.tN = a(this.tM, this.tG, this.tH, this.tI, this.tJ, this.tK);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(long j, long j2) {
            this.tG = j;
            this.tI = j2;
            ia();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(long j, long j2) {
            this.tH = j;
            this.tJ = j2;
            ia();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface d {
        long timeUsToTargetTime(long j);
    }

    public static final class e {
        public static final e tO = new e(-3, C.TIME_UNSET, -1);
        private final int bs;
        private final long tP;
        private final long tQ;

        private e(int i, long j, long j2) {
            this.bs = i;
            this.tP = j;
            this.tQ = j2;
        }

        public static e aj(long j) {
            return new e(0, C.TIME_UNSET, j);
        }

        public static e m(long j, long j2) {
            return new e(-1, j, j2);
        }

        public static e n(long j, long j2) {
            return new e(-2, j, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface f {
        e b(i iVar, long j) throws IOException;

        void ib();
    }

    protected a(d dVar, f fVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.tC = fVar;
        this.tE = i;
        this.tB = new C0029a(dVar, j, j2, j3, j4, j5, j6);
    }

    protected final int a(i iVar, long j, u uVar) {
        if (j == iVar.ie()) {
            return 0;
        }
        uVar.uc = j;
        return 1;
    }

    public int a(i iVar, u uVar) throws IOException {
        while (true) {
            c cVar = (c) com.applovin.exoplayer2.l.a.N(this.tD);
            long jHV = cVar.hV();
            long jHW = cVar.hW();
            long jHZ = cVar.hZ();
            if (jHW - jHV <= this.tE) {
                a(false, jHV);
                return a(iVar, jHV, uVar);
            }
            if (!a(iVar, jHZ)) {
                return a(iVar, jHZ, uVar);
            }
            iVar.ic();
            e eVarB = this.tC.b(iVar, cVar.hX());
            int i = eVarB.bs;
            if (i == -3) {
                a(false, jHZ);
                return a(iVar, jHZ, uVar);
            }
            if (i == -2) {
                cVar.k(eVarB.tP, eVarB.tQ);
            } else {
                if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    a(iVar, eVarB.tQ);
                    a(true, eVarB.tQ);
                    return a(iVar, eVarB.tQ, uVar);
                }
                cVar.l(eVarB.tP, eVarB.tQ);
            }
        }
    }

    protected final void a(boolean z, long j) {
        this.tD = null;
        this.tC.ib();
        b(z, j);
    }

    protected final boolean a(i iVar, long j) throws IOException {
        long jIe = j - iVar.ie();
        if (jIe < 0 || jIe > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        iVar.bH((int) jIe);
        return true;
    }

    public final void ag(long j) {
        c cVar = this.tD;
        if (cVar == null || cVar.hY() != j) {
            this.tD = ah(j);
        }
    }

    protected c ah(long j) {
        return new c(j, this.tB.timeUsToTargetTime(j), this.tB.tG, this.tB.tH, this.tB.tI, this.tB.tJ, this.tB.tK);
    }

    protected void b(boolean z, long j) {
    }

    public final v hS() {
        return this.tB;
    }

    public final boolean hT() {
        return this.tD != null;
    }
}
