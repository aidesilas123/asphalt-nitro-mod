package com.applovin.exoplayer2.h;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ba;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class aa extends ba {
    private static final Object Nv = new Object();
    private static final com.applovin.exoplayer2.ab Nw = new ab.b().n("SinglePeriodTimeline").b(Uri.EMPTY).bV();
    private final long NA;
    private final boolean NB;
    private final long Nx;
    private final long Ny;
    private final long Nz;

    @Nullable
    private final ab.e eb;

    @Nullable
    private final com.applovin.exoplayer2.ab gL;

    @Nullable
    private final Object iI;
    private final long iJ;
    private final long iK;
    private final long iL;
    private final boolean iM;
    private final boolean iN;

    public aa(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, @Nullable Object obj, com.applovin.exoplayer2.ab abVar, @Nullable ab.e eVar) {
        this.iJ = j;
        this.iK = j2;
        this.iL = j3;
        this.Nx = j4;
        this.Ny = j5;
        this.Nz = j6;
        this.NA = j7;
        this.iM = z;
        this.iN = z2;
        this.NB = z3;
        this.iI = obj;
        this.gL = (com.applovin.exoplayer2.ab) com.applovin.exoplayer2.l.a.checkNotNull(abVar);
        this.eb = eVar;
    }

    public aa(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, @Nullable Object obj, com.applovin.exoplayer2.ab abVar) {
        this(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j, j2, j3, j4, z, z2, false, obj, abVar, z3 ? abVar.eb : null);
    }

    public aa(long j, boolean z, boolean z2, boolean z3, @Nullable Object obj, com.applovin.exoplayer2.ab abVar) {
        this(j, j, 0L, 0L, z, z2, z3, obj, abVar);
    }

    @Override // com.applovin.exoplayer2.ba
    public ba.a a(int i, ba.a aVar, boolean z) {
        com.applovin.exoplayer2.l.a.h(i, 0, 1);
        return aVar.a(null, z ? Nv : null, 0, this.Nx, -this.Nz);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e A[PHI: r1
      0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x0012, B:5:0x0016, B:7:0x001c, B:12:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.applovin.exoplayer2.ba
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.applovin.exoplayer2.ba.c a(int r25, com.applovin.exoplayer2.ba.c r26, long r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = 0
            r2 = 1
            r3 = r25
            com.applovin.exoplayer2.l.a.h(r3, r1, r2)
            long r1 = r0.NA
            boolean r14 = r0.iN
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r14 == 0) goto L2e
            boolean r5 = r0.NB
            if (r5 != 0) goto L2e
            r5 = 0
            int r7 = (r27 > r5 ? 1 : (r27 == r5 ? 0 : -1))
            if (r7 == 0) goto L2e
            long r5 = r0.Ny
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 != 0) goto L27
        L24:
            r16 = r3
            goto L30
        L27:
            long r1 = r1 + r27
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 <= 0) goto L2e
            goto L24
        L2e:
            r16 = r1
        L30:
            java.lang.Object r4 = com.applovin.exoplayer2.ba.c.iF
            com.applovin.exoplayer2.ab r5 = r0.gL
            java.lang.Object r6 = r0.iI
            long r7 = r0.iJ
            long r9 = r0.iK
            long r11 = r0.iL
            boolean r13 = r0.iM
            com.applovin.exoplayer2.ab$e r15 = r0.eb
            long r1 = r0.Ny
            r18 = r1
            r20 = 0
            r21 = 0
            long r1 = r0.Nz
            r22 = r1
            r3 = r26
            com.applovin.exoplayer2.ba$c r1 = r3.a(r4, r5, r6, r7, r9, r11, r13, r14, r15, r16, r18, r20, r21, r22)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.aa.a(int, com.applovin.exoplayer2.ba$c, long):com.applovin.exoplayer2.ba$c");
    }

    @Override // com.applovin.exoplayer2.ba
    public Object b(int i) {
        com.applovin.exoplayer2.l.a.h(i, 0, 1);
        return Nv;
    }

    @Override // com.applovin.exoplayer2.ba
    public int c(Object obj) {
        return Nv.equals(obj) ? 0 : -1;
    }

    @Override // com.applovin.exoplayer2.ba
    public int cP() {
        return 1;
    }

    @Override // com.applovin.exoplayer2.ba
    public int cQ() {
        return 1;
    }
}
