package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9q, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08859q {
    public int A00;
    public int A01;
    public Handler A03;
    public Object A04;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final InterfaceC08839o A0A;
    public final InterfaceC08849p A0B;
    public final AbstractC08939z A0C;
    public long A02 = C.TIME_UNSET;
    public boolean A05 = true;

    public C08859q(InterfaceC08839o interfaceC08839o, InterfaceC08849p interfaceC08849p, AbstractC08939z abstractC08939z, int i, Handler handler) {
        this.A0A = interfaceC08839o;
        this.A0B = interfaceC08849p;
        this.A0C = abstractC08939z;
        this.A03 = handler;
        this.A01 = i;
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01;
    }

    public final long A02() {
        return this.A02;
    }

    public final Handler A03() {
        return this.A03;
    }

    public final InterfaceC08849p A04() {
        return this.A0B;
    }

    public final C08859q A05() {
        HI.A04(!this.A09);
        if (this.A02 == C.TIME_UNSET) {
            HI.A03(this.A05);
        }
        this.A09 = true;
        this.A0A.AF4(this);
        return this;
    }

    public final C08859q A06(int i) {
        HI.A04(!this.A09);
        this.A00 = i;
        return this;
    }

    public final C08859q A07(Object obj) {
        HI.A04(!this.A09);
        this.A04 = obj;
        return this;
    }

    public final AbstractC08939z A08() {
        return this.A0C;
    }

    public final Object A09() {
        return this.A04;
    }

    public final synchronized void A0A(boolean z) {
        this.A07 |= z;
        this.A08 = true;
        notifyAll();
    }

    public final boolean A0B() {
        return this.A05;
    }

    public final synchronized boolean A0C() throws InterruptedException {
        HI.A04(this.A09);
        HI.A04(this.A03.getLooper().getThread() != Thread.currentThread());
        while (!this.A08) {
            wait();
        }
        return this.A07;
    }

    public final synchronized boolean A0D() {
        return this.A06;
    }
}
