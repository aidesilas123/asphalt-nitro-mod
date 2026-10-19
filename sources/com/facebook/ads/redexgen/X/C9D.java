package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9D, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C9D extends AbstractC1360Sy implements MB {
    public static byte[] A0F;
    public static String[] A0G = {"QUFYIN7o4MSHfMbcaqgxGqdg8oING", "Qixa92rp7KQSHPhBId3L5m9SXc6gxNRP", "TUKhftCqFUFv9xNbjbPA3CLhBIkdW", "aNiMBj1VMT3xct4Co4hWzqTsg", "QYSCqyZ4CS", "VjIbmM2G6pRRrYhuKIf6SOzC6eQUF7eo", "KFJXOgKoK7JNlCBWMf", "dachHr6cLZKwbIDqTeRsc0FgbmZCJ"};
    public View A00;
    public View A01;
    public YA A02;
    public C1143Kn A03;
    public AbstractC1172Ls A04;
    public PS A05;
    public JT A06;
    public boolean A07;
    public boolean A08;
    public final InterfaceC1173Lt A09;
    public final InterfaceC1211Nf A0A;
    public final C1212Ng A0B;
    public final RX A0C;
    public final C1108Jb A0D;
    public final AtomicBoolean A0E;

    static {
        A08();
    }

    public C9D(C1231Nz c1231Nz) {
        super(c1231Nz, false);
        this.A0E = new AtomicBoolean(false);
        this.A08 = false;
        this.A07 = false;
        this.A02 = c1231Nz.A05();
        this.A04 = c1231Nz.A08();
        View view = new View(this.A02);
        this.A01 = view;
        LV.A0K(view);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13);
        addView(this.A01, layoutParams);
        A05();
        InterfaceC1173Lt interfaceC1173LtA09 = c1231Nz.A09();
        this.A09 = interfaceC1173LtA09;
        C1221Np.A00(c1231Nz.A05(), this, getAdInfo().A0D().A07());
        RX rxA01 = A01(c1231Nz);
        this.A0C = rxA01;
        getAdDetailsView().bringToFront();
        C1108Jb c1108JbA02 = A02(c1231Nz);
        this.A0D = c1108JbA02;
        A13();
        this.A05 = new PS(this.A02, c1231Nz.A06(), getAdDataBundle());
        C1358Sw c1358Sw = new C1358Sw(this);
        this.A0A = c1358Sw;
        this.A0B = new C1212Ng(c1231Nz, getAdDataBundle(), rxA01, c1108JbA02, getAdDetailsView(), interfaceC1173LtA09, c1358Sw);
        if (IP.A19(getAdContextWrapper())) {
            NO.A00(rxA01.getVideoImplView(), IP.A1A(getAdContextWrapper()), new O1(this));
        }
    }

    private RX A01(C1231Nz c1231Nz) {
        RX rx = (RX) c1231Nz.A02();
        int iA12 = A12(c1231Nz.A08());
        ImageView imageView = (ImageView) c1231Nz.A03();
        imageView.setPadding(AbstractC1360Sy.A0D, AbstractC1360Sy.A0D, AbstractC1360Sy.A0D, AbstractC1360Sy.A0D);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC1360Sy.A0E, AbstractC1360Sy.A0E);
        layoutParams.setMargins(0, iA12, AbstractC1360Sy.A0C, 0);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        addView(rx, layoutParams2);
        rx.addView(imageView, layoutParams);
        return rx;
    }

    private C1108Jb A02(C1231Nz c1231Nz) {
        C1108Jb c1108JbA0A = c1231Nz.A0A();
        c1108JbA0A.A06(-1, AbstractC1360Sy.A09);
        c1108JbA0A.setPadding(AbstractC1360Sy.A0H, AbstractC1360Sy.A0H, AbstractC1360Sy.A0H, AbstractC1360Sy.A0H);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, AbstractC1360Sy.A0G);
        layoutParams.addRule(12);
        addView(c1108JbA0A, layoutParams);
        return c1108JbA0A;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        if (getAnimationPlugin() != null) {
            getAnimationPlugin().A0E();
            this.A0C.A0d(getAnimationPlugin());
        }
    }

    private void A05() {
        AbstractC1172Ls abstractC1172Ls = this.A04;
        if (abstractC1172Ls == null) {
            return;
        }
        this.A06 = new JT(abstractC1172Ls, 400, -abstractC1172Ls.getToolbarHeight(), 0);
    }

    private void A06() {
        new C1094In(getAdDataBundle().A11(), getAdEventManager()).A04(EnumC1093Im.A0r, null);
        if (getAdInfo().A0O()) {
            this.A0E.set(true);
            LV.A0T(this);
            LV.A0H(this.A0C);
            LV.A0Z(this.A0C, this.A0D, this.A0B, this.A00);
            LV.A0L(this.A04);
            PS ps = this.A05;
            T3 ctaButton = getCtaButton();
            String[] strArr = A0G;
            if (strArr[2].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A0G[3] = "FxfG3zWETYKhpCEsP1aqGpvXk";
            Pair<PR, View> pairA03 = ps.A03(ctaButton);
            this.A00 = (View) pairA03.second;
            switch (O2.A00[((PR) pairA03.first).ordinal()]) {
                case 1:
                    getAdDetailsView().setVisibility(0);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.setMargins(0, A12(this.A04), 0, 0);
                    layoutParams.addRule(2, getAdDetailsView().getId());
                    addView(this.A00, layoutParams);
                    break;
                case 2:
                    LV.A0Z(getAdDetailsView());
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams2.setMargins(AbstractC1360Sy.A0F, AbstractC1360Sy.A0F, AbstractC1360Sy.A0F, AbstractC1360Sy.A0F);
                    addView(this.A00, layoutParams2);
                    break;
            }
            if (getAdInfo().A0G().A00() >= 0) {
                this.A07 = true;
                AbstractC1172Ls abstractC1172Ls = this.A04;
                if (abstractC1172Ls != null) {
                    abstractC1172Ls.setToolbarActionMode(2);
                    this.A04.setProgressImmediate(0.0f);
                }
                C1143Kn c1143Kn = new C1143Kn((int) getAdInfo().A0G().A00(), 20.0f, 20L, new Handler(Looper.getMainLooper()), new C1357Sv(this));
                this.A03 = c1143Kn;
                c1143Kn.A08();
            }
        }
    }

    private void A07() {
        JT jt = this.A06;
        if (jt != null) {
            jt.A3U(true, false);
        }
        if (getAdDetailsAnimation() != null) {
            getAdDetailsAnimation().A3U(true, false);
        }
    }

    public static void A08() {
        A0F = new byte[]{-53, -60, -39, -56, -30, -42, -41, -60, -43, -41, -52, -47, -54, -30, -60, -47, -52, -48, -60, -41, -52, -46, -47, -42, -30, -45, -49, -60, -36, -56, -57, -51, -48, -44, -58, -32, -45, -58, -40, -62, -45, -59, -32, -44, -60, -45, -58, -58, -49, -32, -44, -55, -48, -40, -49, -53, -75, -57, -45, -71, -62, -72, -45, -73, -75, -58, -72, -45, -57, -68, -61, -53, -62};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0B(AnonymousClass75 anonymousClass75) {
        super.A0B(anonymousClass75);
        A06();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0C(AnonymousClass71 anonymousClass71) {
        super.A0C(anonymousClass71);
        int duration = this.A0C.getDuration() - anonymousClass71.A00();
        if (getAnimationPlugin() != null) {
            if (A0G[1].charAt(18) != '3') {
                throw new RuntimeException();
            }
            A0G[5] = "xiBnzSw2W6K3rvYkwdUGMYXv5m3ZqRWR";
            if (duration >= 3000 || !getAnimationPlugin().A0J()) {
                return;
            }
            getAnimationPlugin().A0F();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0u() {
        super.A0u();
        A04();
        this.A04 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1360Sy, com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0z(C1D c1d, String str, double d2, Bundle bundle) {
        super.A0z(c1d, str, d2, bundle);
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!bundle.getBoolean(A03(0, 31, 118), false)) {
            A07();
        }
        if (bundle.getBoolean(A03(55, 18, 103), false)) {
            A06();
        }
        if (bundle.getBoolean(A03(31, 24, 116), false)) {
            C1212Ng c1212Ng = this.A0B;
            if (A0G[1].charAt(18) != '3') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[2] = "jjtMTZWEM7Dg1szUnnnmuTjwvMhej";
            strArr[0] = "cexdZia4vusGbXInA5fVVHDcQrSB4";
            c1212Ng.A07(this);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A10() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a  */
    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A11(boolean r6) {
        /*
            r5 = this;
            r4 = 1
            if (r6 == 0) goto L33
            boolean r0 = r5.A08
            if (r0 != 0) goto L33
            java.util.concurrent.atomic.AtomicBoolean r0 = r5.A0E
            boolean r3 = r0.get()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C9D.A0G
            r0 = 7
            r1 = r2[r0]
            r0 = 4
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L65
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C9D.A0G
            java.lang.String r1 = "IfEmWBIDBUNw5tL7YhS4lNzldGhzw"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "8CoNQoXVMdzgwU1krh95bRLsSKKH4"
            r0 = 0
            r2[r0] = r1
            if (r3 != 0) goto L33
            com.facebook.ads.redexgen.X.Ng r0 = r5.A0B
            r0.A07(r5)
            return r4
        L33:
            com.facebook.ads.redexgen.X.1D r0 = r5.getAdInfo()
            boolean r3 = r0.A0O()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C9D.A0G
            r0 = 5
            r1 = r1[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            r0 = 107(0x6b, float:1.5E-43)
            if (r1 == r0) goto L65
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C9D.A0G
            java.lang.String r1 = "YRUjLZqfjvY5EOxU383ujQcW8j7gUgor"
            r0 = 1
            r2[r0] = r1
            if (r3 == 0) goto L63
            java.util.concurrent.atomic.AtomicBoolean r0 = r5.A0E
            boolean r0 = r0.get()
            if (r0 != 0) goto L63
            com.facebook.ads.redexgen.X.RX r1 = r5.A0C
            com.facebook.ads.redexgen.X.Pe r0 = com.facebook.ads.redexgen.X.EnumC1262Pe.A08
            r1.A0a(r0)
            return r4
        L63:
            r0 = 0
            return r0
        L65:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C9D.A11(boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1360Sy
    public final void A13() {
        super.A13();
        if (getAnimationPlugin() != null) {
            getAnimationPlugin().A9D(this.A0C);
        }
    }

    public final boolean A14() {
        return getAdInfo().A0O();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public int getCloseButtonStyle() {
        if (this.A07) {
            return 2;
        }
        if (!A14() || this.A0E.get()) {
            return super.getCloseButtonStyle();
        }
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1360Sy, com.facebook.ads.redexgen.X.AbstractC1227Nv, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }
}
