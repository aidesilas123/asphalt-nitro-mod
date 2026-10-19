package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ow, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1254Ow extends RelativeLayout {
    public boolean A00;
    public final int A01;
    public final AbstractC1284Qa A02;
    public final boolean A03;
    public final boolean A04;
    public final AbstractC1566aS A05;
    public final YA A06;
    public final InterfaceC1086If A07;
    public final LN A08;
    public final InterfaceC1173Lt A09;
    public final MM A0A;
    public final C1285Qb A0B;

    public AbstractC1254Ow(YA ya, MM mm, InterfaceC1086If interfaceC1086If, AbstractC1566aS abstractC1566aS, int i, boolean z, boolean z2, InterfaceC1173Lt interfaceC1173Lt) {
        super(ya);
        this.A08 = new LN();
        this.A00 = false;
        ST st = new ST(this);
        this.A02 = st;
        this.A01 = i;
        this.A06 = ya;
        this.A04 = z;
        this.A03 = z2;
        this.A09 = interfaceC1173Lt;
        this.A0A = mm;
        this.A05 = abstractC1566aS;
        this.A07 = interfaceC1086If;
        C1285Qb c1285Qb = new C1285Qb(this, 1, new WeakReference(st), ya);
        this.A0B = c1285Qb;
        c1285Qb.A0W(abstractC1566aS.A0C());
        c1285Qb.A0X(abstractC1566aS.A0D());
    }

    public final void A03() {
        if (this.A00) {
            return;
        }
        this.A0B.A0U();
        this.A00 = true;
    }

    public abstract void A0K();

    public abstract void A0L();

    public abstract void A0M();

    public abstract void A0N(boolean z);

    public abstract void A0O(boolean z);

    public abstract boolean A0P();

    public abstract boolean A0Q();

    public AbstractC1566aS getAdDataBundle() {
        return this.A05;
    }

    public C1285Qb getAdViewabilityChecker() {
        return this.A0B;
    }

    public abstract C1257Oz getFullScreenAdStyle();

    public LN getTouchDataRecorder() {
        return this.A08;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }
}
