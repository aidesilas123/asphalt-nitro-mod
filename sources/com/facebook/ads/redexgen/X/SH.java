package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public abstract class SH extends FrameLayout implements InterfaceC1174Lu {
    public static String[] A0D = {"2Xyaln6pEv", "U0a3JqFqqkDVhXbmlhDLXicSxteMexx", "xzpI97Jg3aS17fwtqg1jZWsfReheMZxV", "0HUxaz9ggnFIA", "Uunhkc3", "kqN9", "fWeU9xYsODnan54TmlbSL1hNy6Lef7fu", "qbKhPFfRzVPGu"};
    public static final RelativeLayout.LayoutParams A0E = new RelativeLayout.LayoutParams(-1, -1);
    public boolean A00;
    public final AbstractC1566aS A01;
    public final C6Q A02;
    public final YA A03;
    public final InterfaceC1086If A04;
    public final C1094In A05;
    public final LN A06;
    public final AbstractC1172Ls A07;
    public final InterfaceC1173Lt A08;
    public final MM A09;
    public final C1285Qb A0A;
    public final LI A0B;
    public final AbstractC1284Qa A0C;

    public SH(YA ya, MM mm, InterfaceC1086If interfaceC1086If, AbstractC1566aS abstractC1566aS, C6Q c6q, InterfaceC1173Lt interfaceC1173Lt) {
        super(ya);
        SL sl = new SL(this);
        this.A0C = sl;
        this.A06 = new LN();
        this.A00 = false;
        this.A03 = ya;
        this.A09 = mm;
        this.A04 = interfaceC1086If;
        this.A01 = abstractC1566aS;
        this.A02 = c6q;
        this.A08 = interfaceC1173Lt;
        this.A05 = new C1094In(abstractC1566aS.A11(), interfaceC1086If);
        C1285Qb c1285Qb = new C1285Qb(this, 1, new WeakReference(sl), ya);
        this.A0A = c1285Qb;
        c1285Qb.A0W(abstractC1566aS.A0C());
        c1285Qb.A0X(abstractC1566aS.A0D());
        this.A07 = A0N();
        LI li = new LI(this);
        this.A0B = li;
        li.A05(LH.A03);
    }

    private FullScreenAdToolbar A0N() {
        FullScreenAdToolbar fullScreenAdToolbar = new FullScreenAdToolbar(this.A03, this.A08, this.A05, 1, this.A01.A0p());
        fullScreenAdToolbar.setFullscreen(true);
        int iA03 = this.A01.A0v().A0D().A03();
        fullScreenAdToolbar.setPageDetails(this.A01.A0z(), this.A01.A11(), iA03, this.A01.A10());
        fullScreenAdToolbar.A06(this.A01.A0u().A01(), T3.A08(this.A01));
        if (iA03 < 0) {
            C1D c1dA0v = this.A01.A0v();
            if (A0D[4].length() == 31) {
                throw new RuntimeException();
            }
            A0D[5] = "3phQ";
            if (c1dA0v.A0M()) {
                fullScreenAdToolbar.setToolbarActionMode(4);
            }
        }
        fullScreenAdToolbar.setToolbarListener(new SI(this));
        return fullScreenAdToolbar;
    }

    private void A0O() {
        if (!this.A01.A0v().A0P()) {
            A0Q();
            return;
        }
        P3 p3A0B = new P1(this.A03, this.A01.A0v().A0E(), this.A01.A0z()).A08(this.A01.A0u().A01()).A0B();
        C1096Ip.A04(p3A0B, this.A05, EnumC1093Im.A0U);
        addView(p3A0B, A0E);
        p3A0B.A04(new SJ(this));
    }

    public final void A0P() {
        if (this.A00) {
            return;
        }
        this.A0A.A0U();
        this.A00 = true;
    }

    public abstract void A0Q();

    public final void A0R(int i, K8 k8) {
        new C1143Kn(i, new SK(this, i, k8)).A08();
    }

    public abstract void A0S(C5J c5j);

    public abstract boolean A0T();

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void A9C(Intent intent, Bundle bundle, C5J c5j) {
        this.A08.A3Q(this, A0E);
        A0S(c5j);
        A0O();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void AEt(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public String getCurrentClientToken() {
        return this.A01.A11();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void onDestroy() {
        this.A0B.A03();
        if (TextUtils.isEmpty(this.A01.A11())) {
            return;
        }
        this.A04.A9J(this.A01.A11(), new NL().A03(this.A0A).A02(this.A06).A05());
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A06.A06(this.A03, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC1173Lt interfaceC1173Lt) {
    }

    public void setUpFullscreenMode(boolean z) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        this.A0B.A05(z ? LH.A04 : LH.A03);
    }
}
