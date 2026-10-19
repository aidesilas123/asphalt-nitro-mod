package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VI implements GX, InterfaceC1053Gy<Object> {
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public final Handler A06;
    public final GW A07;
    public final HL A08;
    public final C1073Hs A09;

    public VI() {
        this(null, null, 1000000L, 2000, HL.A00);
    }

    public VI(Handler handler, GW gw, long j, int i, HL hl) {
        this.A06 = handler;
        this.A07 = gw;
        this.A09 = new C1073Hs(i);
        this.A08 = hl;
        this.A01 = j;
    }

    private void A01(int i, long j, long j2) {
        Handler handler = this.A06;
        if (handler == null || this.A07 == null) {
            return;
        }
        handler.post(new Gh(this, i, j, j2));
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final synchronized long A62() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1053Gy
    public final synchronized void AAm(Object obj, int i) {
        this.A02 += (long) i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1053Gy
    public final synchronized void ADE(Object obj) {
        HI.A04(this.A00 > 0);
        long jA5O = this.A08.A5O();
        int i = (int) (jA5O - this.A03);
        this.A05 += (long) i;
        long j = this.A04;
        long j2 = this.A02;
        this.A04 = j + j2;
        if (i > 0) {
            this.A09.A03((int) Math.sqrt(j2), (8000 * j2) / ((long) i));
            if (this.A05 >= AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS || this.A04 >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                this.A01 = (long) this.A09.A02(0.5f);
            }
        }
        A01(i, this.A02, this.A01);
        int i2 = this.A00 - 1;
        this.A00 = i2;
        if (i2 > 0) {
            this.A03 = jA5O;
        }
        this.A02 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1053Gy
    public final synchronized void ADF(Object obj, C1037Gg c1037Gg) {
        if (this.A00 == 0) {
            this.A03 = this.A08.A5O();
        }
        this.A00++;
    }
}
