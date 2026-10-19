package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9e, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08739e {
    public final int A00;
    public final long A01;
    public final long A02;
    public final AbstractC08939z A03;
    public final EW A04;
    public final TrackGroupArray A05;
    public final GS A06;
    public final Object A07;
    public final boolean A08;
    public volatile long A09;
    public volatile long A0A;

    public C08739e(AbstractC08939z abstractC08939z, long j, TrackGroupArray trackGroupArray, GS gs) {
        this(abstractC08939z, null, new EW(0), j, C.TIME_UNSET, 1, false, trackGroupArray, gs);
    }

    public C08739e(AbstractC08939z abstractC08939z, Object obj, EW ew, long j, long j2, int i, boolean z, TrackGroupArray trackGroupArray, GS gs) {
        this.A03 = abstractC08939z;
        this.A07 = obj;
        this.A04 = ew;
        this.A02 = j;
        this.A01 = j2;
        this.A0A = j;
        this.A09 = j;
        this.A00 = i;
        this.A08 = z;
        this.A05 = trackGroupArray;
        this.A06 = gs;
    }

    public static void A00(C08739e c08739e, C08739e c08739e2) {
        c08739e2.A0A = c08739e.A0A;
        c08739e2.A09 = c08739e.A09;
    }

    public final C08739e A01(int i) {
        C08739e c08739e = new C08739e(this.A03, this.A07, this.A04.A00(i), this.A02, this.A01, this.A00, this.A08, this.A05, this.A06);
        A00(this, c08739e);
        return c08739e;
    }

    public final C08739e A02(int i) {
        C08739e c08739e = new C08739e(this.A03, this.A07, this.A04, this.A02, this.A01, i, this.A08, this.A05, this.A06);
        A00(this, c08739e);
        return c08739e;
    }

    public final C08739e A03(AbstractC08939z abstractC08939z, Object obj) {
        C08739e c08739e = new C08739e(abstractC08939z, obj, this.A04, this.A02, this.A01, this.A00, this.A08, this.A05, this.A06);
        A00(this, c08739e);
        return c08739e;
    }

    public final C08739e A04(EW ew, long j, long j2) {
        long j3 = j2;
        AbstractC08939z abstractC08939z = this.A03;
        Object obj = this.A07;
        if (!ew.A01()) {
            j3 = C.TIME_UNSET;
        }
        return new C08739e(abstractC08939z, obj, ew, j, j3, this.A00, this.A08, this.A05, this.A06);
    }

    public final C08739e A05(TrackGroupArray trackGroupArray, GS gs) {
        C08739e c08739e = new C08739e(this.A03, this.A07, this.A04, this.A02, this.A01, this.A00, this.A08, trackGroupArray, gs);
        A00(this, c08739e);
        return c08739e;
    }

    public final C08739e A06(boolean z) {
        C08739e c08739e = new C08739e(this.A03, this.A07, this.A04, this.A02, this.A01, this.A00, z, this.A05, this.A06);
        A00(this, c08739e);
        return c08739e;
    }
}
