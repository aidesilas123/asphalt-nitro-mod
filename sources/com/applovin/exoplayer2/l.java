package com.applovin.exoplayer2;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public class l implements aa {
    private final com.applovin.exoplayer2.k.m aM;
    private final long aN;
    private final long aO;
    private final long aP;
    private final long aQ;
    private final int aR;
    private final boolean aS;
    private final long aT;
    private final boolean aU;
    private int aV;
    private boolean aW;

    public l() {
        this(new com.applovin.exoplayer2.k.m(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    protected l(com.applovin.exoplayer2.k.m mVar, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        a(i3, 0, "bufferForPlaybackMs", "0");
        a(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(i, i3, "minBufferMs", "bufferForPlaybackMs");
        a(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(i2, i, "maxBufferMs", "minBufferMs");
        a(i6, 0, "backBufferDurationMs", "0");
        this.aM = mVar;
        this.aN = h.g(i);
        this.aO = h.g(i2);
        this.aP = h.g(i3);
        this.aQ = h.g(i4);
        this.aR = i5;
        this.aV = i5 == -1 ? C.DEFAULT_VIDEO_BUFFER_SIZE : i5;
        this.aS = z;
        this.aT = h.g(i6);
        this.aU = z2;
    }

    private static void a(int i, int i2, String str, String str2) {
        com.applovin.exoplayer2.l.a.checkArgument(i >= i2, str + " cannot be less than " + str2);
    }

    private void e(boolean z) {
        int i = this.aR;
        if (i == -1) {
            i = C.DEFAULT_VIDEO_BUFFER_SIZE;
        }
        this.aV = i;
        this.aW = false;
        if (z) {
            this.aM.Y();
        }
    }

    private static int s(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return C.DEFAULT_VIDEO_BUFFER_SIZE;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    protected int a(ar[] arVarArr, com.applovin.exoplayer2.j.d[] dVarArr) {
        int iS = 0;
        for (int i = 0; i < arVarArr.length; i++) {
            if (dVarArr[i] != null) {
                iS += s(arVarArr[i].M());
            }
        }
        return Math.max(C.DEFAULT_VIDEO_BUFFER_SIZE, iS);
    }

    @Override // com.applovin.exoplayer2.aa
    public void a(ar[] arVarArr, com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.d[] dVarArr) {
        int iA = this.aR;
        if (iA == -1) {
            iA = a(arVarArr, dVarArr);
        }
        this.aV = iA;
        this.aM.fj(iA);
    }

    @Override // com.applovin.exoplayer2.aa
    public boolean a(long j, float f2, boolean z, long j2) {
        long jB = com.applovin.exoplayer2.l.ai.b(j, f2);
        long jMin = z ? this.aQ : this.aP;
        if (j2 != C.TIME_UNSET) {
            jMin = Math.min(j2 / 2, jMin);
        }
        return jMin <= 0 || jB >= jMin || (!this.aS && this.aM.ok() >= this.aV);
    }

    @Override // com.applovin.exoplayer2.aa
    public void ab() {
        e(true);
    }

    @Override // com.applovin.exoplayer2.aa
    public void ap() {
        e(false);
    }

    @Override // com.applovin.exoplayer2.aa
    public void aq() {
        e(true);
    }

    @Override // com.applovin.exoplayer2.aa
    public com.applovin.exoplayer2.k.b ar() {
        return this.aM;
    }

    @Override // com.applovin.exoplayer2.aa
    public long as() {
        return this.aT;
    }

    @Override // com.applovin.exoplayer2.aa
    public boolean at() {
        return this.aU;
    }

    @Override // com.applovin.exoplayer2.aa
    public boolean b(long j, long j2, float f2) {
        boolean z = true;
        boolean z2 = this.aM.ok() >= this.aV;
        long jMin = this.aN;
        if (f2 > 1.0f) {
            jMin = Math.min(com.applovin.exoplayer2.l.ai.a(jMin, f2), this.aO);
        }
        if (j2 < Math.max(jMin, 500000L)) {
            if (!this.aS && z2) {
                z = false;
            }
            this.aW = z;
            if (!z && j2 < 500000) {
                com.applovin.exoplayer2.l.q.h("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.aO || z2) {
            this.aW = false;
        }
        return this.aW;
    }
}
