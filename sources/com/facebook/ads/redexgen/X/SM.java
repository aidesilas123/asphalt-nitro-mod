package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.gameloft.adsmanager.JavaUtils;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class SM extends AbstractC1254Ow {
    public static byte[] A0W;
    public static String[] A0X = {"zF", "YuhgBsbCJ4GENG72FYuTSQ3UxVCmrs0t", "RSfzcHToFNO8jc1tX2m0S0AZ0vbf9kKl", TtmlNode.TAG_P, "lGjhRdALEILVIUsiuWCm6MXJK2R8L6Co", "wXQvDYR5huLQKlTsBS5mG0rN7ygrQvR2", "AYgBJnzxyMi9rrwHO3oB8yOhTSWVLxNu", "3k2Jytm7iEKA6X2jmmGhgFSNDYaf4AHR"};
    public static final int A0Y;
    public static final int A0Z;
    public static final int A0a;
    public static final int A0b;
    public static final int A0c;
    public static final int A0d;
    public static final int A0e;
    public static final int A0f;
    public static final int A0g;
    public static final int A0h;
    public C1M A00;
    public C1143Kn A01;
    public EnumC1267Pj A02;
    public JX A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final YA A0C;
    public final NR A0D;
    public final T3 A0E;
    public final P0 A0F;
    public final PS A0G;
    public final C1258Pa A0H;
    public final RX A0I;
    public final AnonymousClass76 A0J;
    public final AbstractC1233Ob A0K;
    public final AbstractC1219Nn A0L;
    public final MU A0M;
    public final MI A0N;
    public final MA A0O;
    public final M9 A0P;
    public final K2 A0Q;
    public final C1122Jr A0R;
    public final C1108Jb A0S;
    public final JT A0T;
    public final boolean A0U;
    public final boolean A0V;

    static {
        A0D();
        A0b = (int) (C1148Ku.A02 * 48.0f);
        int iA01 = C07052d.A01(-1, 77);
        A0Z = iA01;
        A0g = (int) (C1148Ku.A02 * 26.0f);
        A0h = (int) (C1148Ku.A02 * 12.0f);
        A0d = (int) (C1148Ku.A02 * 12.0f);
        A0e = (int) (C1148Ku.A02 * 44.0f);
        A0c = (int) (C1148Ku.A02 * 8.0f);
        A0f = (int) (C1148Ku.A02 * 16.0f);
        A0a = C07052d.A01(iA01, 90);
        A0Y = (int) (C1148Ku.A02 * 4.0f);
    }

    public SM(YA ya, InterfaceC1086If interfaceC1086If, AbstractC1566aS abstractC1566aS, C6Q c6q, MM mm, int i, InterfaceC1173Lt interfaceC1173Lt, C1094In c1094In, int i2, int i3, int i4, boolean z, int i5, boolean z2, boolean z3, boolean z4, P0 p0) {
        super(ya, mm, interfaceC1086If, abstractC1566aS, i, z3, z4, interfaceC1173Lt);
        this.A04 = false;
        this.A05 = false;
        this.A07 = false;
        MA ma = new MA() { // from class: com.facebook.ads.redexgen.X.8x
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(MD md) {
                this.A00.A07 = true;
            }
        };
        this.A0O = ma;
        MI mi = new MI() { // from class: com.facebook.ads.redexgen.X.8q
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(MJ mj) {
                if (((AbstractC1254Ow) this.A00).A08.A07()) {
                    return;
                }
                this.A00.A03();
            }
        };
        this.A0N = mi;
        MU mu = new MU() { // from class: com.facebook.ads.redexgen.X.8l
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            public final /* bridge */ /* synthetic */ void A03(C8Y c8y) {
            }
        };
        this.A0M = mu;
        M9 m9 = new M9() { // from class: com.facebook.ads.redexgen.X.8X
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass71 anonymousClass71) {
                this.A00.A0G(anonymousClass71);
                this.A00.A0F.ABO(anonymousClass71.A00());
            }
        };
        this.A0P = m9;
        AbstractC1233Ob abstractC1233Ob = new AbstractC1233Ob() { // from class: com.facebook.ads.redexgen.X.8E
            public static String[] A01 = {"WHlfg22LQewOceL2LP0nfjs", "MLczN6H9d0ts9YHCrKUbmxW9Pv4xX40Z", "bfgAoKxvo7gEuP52Z2EO408IJ8JPPLb2", "8W4TrLCVwT5pN341HhH6D3mP2byMMwpU", "ScQcjv0hvXE5sqpvLhFnJdo", "ew857MaMURY893GG0hi3zO6RFtTWvxkk", "kzrdBoT0QozH1fOZ2V6a3FXV0JrhAD1i", "6tn8KSSYbJPeTKsUVc3lRKjtLiYgy0EC"};

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass75 anonymousClass75) {
                this.A00.A0F.AB2(this.A00.A0I.getDuration());
                if (this.A00.A0P()) {
                    this.A00.A0L();
                    return;
                }
                SM sm = this.A00;
                String[] strArr = A01;
                if (strArr[6].charAt(31) == strArr[1].charAt(31)) {
                    throw new RuntimeException();
                }
                A01[2] = "b2r5SY6tJEDKh19k0rBQmCTxaUfC6Ghy";
                sm.A0F.AAf();
            }
        };
        this.A0K = abstractC1233Ob;
        C8C c8c = new C8C(this);
        this.A0L = c8c;
        this.A0C = ya;
        this.A0R = new C1122Jr(ya, c1094In);
        this.A0S = new C1108Jb(ya);
        this.A0A = i5;
        this.A0V = z2;
        this.A09 = i2;
        this.A0B = i3;
        this.A0F = p0;
        this.A08 = i4;
        this.A0U = z;
        this.A0G = new PS(ya, interfaceC1086If, super.A05);
        this.A00 = i3 == 1 ? super.A05.A0u().A01() : super.A05.A0u().A00();
        RX rx = new RX(ya);
        this.A0I = rx;
        rx.getEventBus().A03(ma, mi, mu, m9, abstractC1233Ob, c8c);
        this.A0J = new AnonymousClass76(ya, interfaceC1086If, rx, abstractC1566aS.A11());
        A0C();
        rx.setVideoURI(c6q.A0S(super.A05.A0v().A0D().A08()));
        A0B();
        C1361Sz c1361SzA05 = A05();
        this.A0D = c1361SzA05;
        JT jt = new JT(c1361SzA05, 400, 100, 0);
        this.A0T = jt;
        jt.A3U(true, false);
        this.A0Q = new K2(true);
        A0E();
        T3 cTAButton = c1361SzA05.getCTAButton();
        this.A0E = cTAButton;
        LV.A0G(1001, cTAButton);
        A0A();
        A09();
        c1361SzA05.bringToFront();
        if (IP.A1X(ya)) {
            ya.A0A().AGA(rx, super.A05.A11(), true);
        }
        if (IP.A1Y(ya)) {
            this.A0H = new C1258Pa(ya, interfaceC1086If, rx, super.A05.A11(), null);
        } else {
            this.A0H = null;
        }
    }

    private C1361Sz A05() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        C1361Sz c1361Sz = new C1361Sz(this.A0C, A0b, super.A05.A0v().A0E().A00() == C1I.A05, getColors(), super.A05.A0v().A0F().A06(), super.A05.A0O().equals(A08(37, 14, 125)) ? EnumC1270Pm.A04.A02() : A08(0, 37, 58), super.A07, super.A09, super.A0B, super.A08, super.A05.A0x());
        LV.A0G(1008, c1361Sz);
        c1361Sz.A0C(this.A0B);
        addView(c1361Sz, layoutParams);
        c1361Sz.setInfo(super.A05.A0v().A0E(), super.A05.A0v().A0F(), super.A05.A11(), super.A05.A0z().A01(), null);
        return c1361Sz;
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0W, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    private void A09() {
        this.A0S.A06(-1, A0Z);
        C1108Jb c1108Jb = this.A0S;
        int i = A0h;
        c1108Jb.setPadding(i, i, i, i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0g);
        layoutParams.addRule(12);
        addView(this.A0S, layoutParams);
    }

    private void A0A() {
        C1122Jr c1122Jr = this.A0R;
        int i = A0d;
        c1122Jr.setPadding(i, i, i, i);
        int i2 = A0e;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
        layoutParams.setMargins(0, AbstractC1172Ls.A00, A0c, 0);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        addView(this.A0I, new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A0R, layoutParams);
    }

    private void A0B() {
        postDelayed(new SP(this), IP.A0L(this.A0C));
    }

    private void A0C() {
        this.A0I.A0c(this.A0S);
        this.A0I.A0c(this.A0R);
        if (!TextUtils.isEmpty(super.A05.A0v().A0D().A07())) {
            C08086j c08086j = new C08086j(this.A0C);
            this.A0I.A0c(c08086j);
            c08086j.setImage(super.A05.A0v().A0D().A07());
        }
        this.A0I.A0c(new C6Z(this.A0C));
    }

    public static void A0D() {
        A0W = new byte[]{-55, -43, -45, -108, -52, -57, -55, -53, -56, -43, -43, -47, -108, -57, -54, -39, -108, -49, -44, -38, -53, -40, -39, -38, -49, -38, -49, -57, -46, -108, -55, -46, -49, -55, -47, -53, -54, Ascii.ESC, Ascii.SO, 32, 10, Ascii.ESC, Ascii.CR, Ascii.SO, Ascii.CR, 8, Ascii.US, Ascii.DC2, Ascii.CR, Ascii.SO, Ascii.CAN};
    }

    private final void A0E() {
        View expandableLayout = this.A0D.getExpandableLayout();
        if (expandableLayout != null) {
            JX jx = this.A03;
            if (jx != null) {
                this.A0Q.A0I(jx);
            }
            C1M c1mA01 = super.A05.A0u().A01();
            this.A0Q.A0I(new JV(this.A0D.getCTAButton(), JavaUtils.Constants.NATIVE_HEIGHT_DP_300, -1, c1mA01.A09(true)));
            int i = A0Z;
            int i2 = A0a;
            int i3 = A0Y;
            this.A0Q.A0I(new JY(this.A0D.getCTAButton(), JavaUtils.Constants.NATIVE_HEIGHT_DP_300, LV.A08(i, i2, i3), LV.A05(c1mA01.A08(true), i3)));
            this.A0Q.A0I(new JW(expandableLayout, 150, false));
            this.A0Q.A9D(this.A0I);
            this.A0Q.A0H(IronSourceConstants.IS_AUCTION_FAILED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G(AnonymousClass71 anonymousClass71) {
        if (this.A0I.getState() == QY.A02 && IP.A1E(this.A0C)) {
            postDelayed(new SO(this, anonymousClass71), 5000L);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public final void A0K() {
        C1143Kn c1143Kn = this.A01;
        if (c1143Kn != null) {
            c1143Kn.A07();
        }
        if (IP.A1X(this.A0C)) {
            this.A0C.A0A().AFz(this.A0I);
        }
        C1258Pa c1258Pa = this.A0H;
        if (c1258Pa != null) {
            c1258Pa.A0A();
        }
        RX rx = this.A0I;
        if (rx != null) {
            rx.getEventBus().A04(this.A0O, this.A0N, this.A0M, this.A0P, this.A0K, this.A0L);
            LV.A0H(this.A0I);
            this.A0I.A0V();
        }
        this.A0J.A0g();
        View[] viewArr = new View[3];
        viewArr[0] = this.A0I;
        C1108Jb c1108Jb = this.A0S;
        String[] strArr = A0X;
        if (strArr[0].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        A0X[2] = "4e1dr9g4n9kT22ZIdoKy0n8REVoGbgbF";
        viewArr[1] = c1108Jb;
        viewArr[2] = this.A0R;
        LV.A0Z(viewArr);
        super.A0B.A0V();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public final void A0L() {
        this.A0C.A0E().A4C();
        this.A04 = true;
        LV.A0T(this);
        LV.A0H(this.A0I);
        LV.A0Z(this.A0I, this.A0S, this.A0R);
        Pair<PR, View> pairA03 = this.A0G.A03(this.A0E);
        View view = (View) pairA03.second;
        LV.A0G(IronSourceConstants.RV_API_HAS_AVAILABILITY_TRUE, view);
        switch (C1255Ox.A00[((PR) pairA03.first).ordinal()]) {
            case 1:
                this.A0D.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.setMargins(0, AbstractC1172Ls.A00, 0, 0);
                layoutParams.addRule(2, this.A0D.getId());
                addView(view, layoutParams);
                break;
            case 2:
                LV.A0Z(this.A0D);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                int i = A0f;
                layoutParams2.setMargins(i, i, i, i);
                addView(view, layoutParams2);
                break;
        }
        if (this.A08 != 0 || !this.A0U) {
            this.A05 = true;
            this.A0F.ACw(true);
            return;
        }
        if (this.A0V) {
            this.A0F.AG5();
        }
        C1143Kn c1143Kn = new C1143Kn(this.A0A, 100.0f, 100L, new Handler(Looper.getMainLooper()), new SN(this));
        this.A01 = c1143Kn;
        c1143Kn.A08();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public final void A0M() {
        this.A0I.A0b(EnumC1267Pj.A02, 20);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public final void A0N(boolean z) {
        C1143Kn c1143Kn = this.A01;
        if (c1143Kn != null) {
            c1143Kn.A07();
        }
        if (this.A0I.A0i()) {
            return;
        }
        this.A02 = this.A0I.getVideoStartReason();
        this.A06 = z;
        this.A0I.A0e(false, 13);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public final void A0O(boolean z) {
        EnumC1267Pj enumC1267Pj;
        C1143Kn c1143Kn = this.A01;
        if (c1143Kn != null && !c1143Kn.A06()) {
            C1143Kn c1143Kn2 = this.A01;
            if (A0X[5].charAt(17) != 'S') {
                throw new RuntimeException();
            }
            String[] strArr = A0X;
            strArr[7] = "pObqmm4LdTsqTcUgL7kozPbufRCkwYZC";
            strArr[6] = "5szeP9lNqMFVM0rzjOQcuK8NUDwg7u3G";
            c1143Kn2.A08();
        }
        if (this.A04 || this.A0I.getState() == QY.A06 || (enumC1267Pj = this.A02) == null) {
            return;
        }
        if (!this.A06 || z) {
            this.A0I.A0b(enumC1267Pj, 19);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public final boolean A0P() {
        return (this.A08 == 2 || !super.A05.A0v().A0O() || this.A04) ? false : true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public final boolean A0Q() {
        return this.A04;
    }

    public C1M getColors() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public C1257Oz getFullScreenAdStyle() {
        return new C1257Oz(true, C1257Oz.A06, super.A05.A0u().A01(), T3.A08(super.A05), super.A05.A0u().A01().A07(true), super.A05.A0v().A0D().A07());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow
    public LN getTouchDataRecorder() {
        return super.A08;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1254Ow, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C1M c1mA00;
        super.onConfigurationChanged(configuration);
        if (this.A04) {
            return;
        }
        if (configuration.orientation == 1) {
            c1mA00 = super.A05.A0u().A01();
        } else {
            AnonymousClass19 anonymousClass19A0u = super.A05.A0u();
            if (A0X[4].charAt(4) != 'R') {
                throw new RuntimeException();
            }
            A0X[1] = "uYIsd2DhsQ91Wp0xmXJ9348eeMLtSRMf";
            c1mA00 = anonymousClass19A0u.A00();
        }
        this.A00 = c1mA00;
        this.A0E.setViewShowsOverMedia(true);
        this.A0E.setUpButtonColors(this.A00);
        this.A0D.A0C(configuration.orientation);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View expandableLayout = this.A0D.getExpandableLayout();
        if (expandableLayout != null && z && this.A03 == null) {
            JX jx = new JX(expandableLayout, JavaUtils.Constants.NATIVE_HEIGHT_DP_300, expandableLayout.getHeight(), 0);
            this.A03 = jx;
            this.A0Q.A0I(jx);
            this.A0Q.A0G();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            A0O(false);
        } else {
            A0N(false);
        }
    }
}
