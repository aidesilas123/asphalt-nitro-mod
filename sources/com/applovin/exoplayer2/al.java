package com.applovin.exoplayer2;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.h.p;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class al {
    private static final p.a gq = new p.a(new Object());
    public final boolean aW;
    public final boolean cD;
    public volatile long cO;
    public final ba ci;
    public final p.a dc;
    public final long de;
    public final com.applovin.exoplayer2.h.ad fB;
    public final com.applovin.exoplayer2.j.k fC;
    public volatile long gA;
    public volatile long gB;
    public final long gr;
    public final int gs;

    @Nullable
    public final p gt;
    public final List<com.applovin.exoplayer2.g.a> gu;
    public final p.a gv;
    public final boolean gw;
    public final int gx;
    public final am gy;
    public final boolean gz;

    public al(ba baVar, p.a aVar, long j, long j2, int i, @Nullable p pVar, boolean z, com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.k kVar, List<com.applovin.exoplayer2.g.a> list, p.a aVar2, boolean z2, int i2, am amVar, long j3, long j4, long j5, boolean z3, boolean z4) {
        this.ci = baVar;
        this.dc = aVar;
        this.de = j;
        this.gr = j2;
        this.gs = i;
        this.gt = pVar;
        this.aW = z;
        this.fB = adVar;
        this.fC = kVar;
        this.gu = list;
        this.gv = aVar2;
        this.gw = z2;
        this.gx = i2;
        this.gy = amVar;
        this.gA = j3;
        this.gB = j4;
        this.cO = j5;
        this.cD = z3;
        this.gz = z4;
    }

    public static al a(com.applovin.exoplayer2.j.k kVar) {
        ba baVar = ba.iw;
        p.a aVar = gq;
        return new al(baVar, aVar, C.TIME_UNSET, 0L, 1, null, false, com.applovin.exoplayer2.h.ad.NG, kVar, com.applovin.exoplayer2.common.a.s.ga(), aVar, false, 0, am.gC, 0L, 0L, 0L, false, false);
    }

    public static p.a cB() {
        return gq;
    }

    @CheckResult
    public al W(int i) {
        return new al(this.ci, this.dc, this.de, this.gr, i, this.gt, this.aW, this.fB, this.fC, this.gu, this.gv, this.gw, this.gx, this.gy, this.gA, this.gB, this.cO, this.cD, this.gz);
    }

    @CheckResult
    public al a(p.a aVar, long j, long j2, long j3, long j4, com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.k kVar, List<com.applovin.exoplayer2.g.a> list) {
        return new al(this.ci, aVar, j2, j3, this.gs, this.gt, this.aW, adVar, kVar, list, this.gv, this.gw, this.gx, this.gy, this.gA, j4, j, this.cD, this.gz);
    }

    @CheckResult
    public al a(@Nullable p pVar) {
        return new al(this.ci, this.dc, this.de, this.gr, this.gs, pVar, this.aW, this.fB, this.fC, this.gu, this.gv, this.gw, this.gx, this.gy, this.gA, this.gB, this.cO, this.cD, this.gz);
    }

    @CheckResult
    public al b(p.a aVar) {
        return new al(this.ci, this.dc, this.de, this.gr, this.gs, this.gt, this.aW, this.fB, this.fC, this.gu, aVar, this.gw, this.gx, this.gy, this.gA, this.gB, this.cO, this.cD, this.gz);
    }

    @CheckResult
    public al c(ba baVar) {
        return new al(baVar, this.dc, this.de, this.gr, this.gs, this.gt, this.aW, this.fB, this.fC, this.gu, this.gv, this.gw, this.gx, this.gy, this.gA, this.gB, this.cO, this.cD, this.gz);
    }

    @CheckResult
    public al c(boolean z, int i) {
        return new al(this.ci, this.dc, this.de, this.gr, this.gs, this.gt, this.aW, this.fB, this.fC, this.gu, this.gv, z, i, this.gy, this.gA, this.gB, this.cO, this.cD, this.gz);
    }

    @CheckResult
    public al d(am amVar) {
        return new al(this.ci, this.dc, this.de, this.gr, this.gs, this.gt, this.aW, this.fB, this.fC, this.gu, this.gv, this.gw, this.gx, amVar, this.gA, this.gB, this.cO, this.cD, this.gz);
    }

    @CheckResult
    public al t(boolean z) {
        return new al(this.ci, this.dc, this.de, this.gr, this.gs, this.gt, z, this.fB, this.fC, this.gu, this.gv, this.gw, this.gx, this.gy, this.gA, this.gB, this.cO, this.cD, this.gz);
    }

    @CheckResult
    public al u(boolean z) {
        return new al(this.ci, this.dc, this.de, this.gr, this.gs, this.gt, this.aW, this.fB, this.fC, this.gu, this.gv, this.gw, this.gx, this.gy, this.gA, this.gB, this.cO, z, this.gz);
    }

    @CheckResult
    public al v(boolean z) {
        return new al(this.ci, this.dc, this.de, this.gr, this.gs, this.gt, this.aW, this.fB, this.fC, this.gu, this.gv, this.gw, this.gx, this.gy, this.gA, this.gB, this.cO, this.cD, z);
    }
}
