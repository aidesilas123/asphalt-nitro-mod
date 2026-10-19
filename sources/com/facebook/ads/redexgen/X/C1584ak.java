package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.widget.LinearLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ak, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1584ak<NativeViewabilityLogger> implements InterfaceC06640o {
    public static byte[] A0G;
    public static String[] A0H = {"1VlIdrj3fRAASVh0IRQbA", "AKXoeI10d8PJONEXEmQHjWIEkAB2E", "HfXt1ktTFXNYFvURT1ePpe", "VNbNAjzqH3UXN3t9RrTP5z6I5Qa6gPQJ", "DeawL9PzUIlDumNdtXISYTaSpfy6P3Cj", "KNbO6MhxkLbBAZAqlm1H7U8Ouut8mEhI", "i536pd2CEb7n0lc", "TelURl5RBqiFivFSJRRvco6RCKborqoX"};
    public static final String A0I;
    public InterfaceC06720w A00;
    public C1572aY A01;
    public F6 A02;
    public C0978Dz A03;
    public InterfaceC1086If A04;
    public NE A06;
    public TA A07;
    public AnonymousClass95 A08;
    public AbstractC1284Qa A09;
    public C1285Qb A0A;
    public String A0C;
    public boolean A0D = false;
    public boolean A0E = false;
    public boolean A0F = false;
    public LN A05 = new LN();
    public Boolean A0B = false;

    static {
        A0A();
        A0I = C1584ak.class.getSimpleName();
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 19);
            if (A0H[2].length() == 29) {
                throw new RuntimeException();
            }
            String[] strArr = A0H;
            strArr[3] = "viF0h1063r6cbXDqGfnWrC6qPBVBGzAv";
            strArr[7] = "3ywSXssJKLxMazlfVUMLvW6ymO505mlb";
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        F6 f6;
        if (this.A00 != null && this.A08 != null && (f6 = this.A02) != null && f6.A0k()) {
            this.A00.AAj(this, this.A08);
        }
        InterfaceC06720w interfaceC06720w = this.A00;
        if (interfaceC06720w != null && this.A0D) {
            boolean z = this.A0E;
            if (A0H[2].length() == 29) {
                throw new RuntimeException();
            }
            A0H[2] = "DQYu3GBVfiN4Ml";
            if (z || !this.A0F) {
                interfaceC06720w.AAj(this, this.A07);
            }
        }
        this.A03.A0E().A3e(this.A00 != null);
    }

    public static void A0A() {
        A0G = new byte[]{-28, -16, -18, -81, -25, -30, -28, -26, -29, -16, -16, -20, -81, -30, -27, -12, -81, -29, -30, -17, -17, -26, -13, -81, -28, -19, -22, -28, -20, -26, -27, -24, -39, -20, -24, -93, -36, -24, -31, -32, -68, -69, -83, 116, Ascii.DEL};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B(int i, C8G c8g) {
        this.A08 = new AnonymousClass95(this.A03, this.A04, new C1587an(this), this.A02, A08(0, 31, 110), 2, this.A05);
        this.A09 = new C1586am(this);
        C1285Qb c1285Qb = new C1285Qb(this.A08, c8g.A04(), c8g.A09(), true, new WeakReference(this.A09), this.A03);
        this.A0A = c1285Qb;
        c1285Qb.A0W(this.A02.A0C());
        this.A0A.A0X(this.A02.A0D());
        this.A08.setVisibility(0);
        this.A03.getResources();
        this.A08.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        this.A08.AFn();
    }

    private void A0E(C8G c8g, C06941s c06941s) {
        C1574aa c1574aaA00 = C1574aa.A00(this.A03, c06941s.A03());
        this.A0C = c1574aaA00.A6N();
        if (C06610k.A06(this.A03, c1574aaA00, this.A04)) {
            this.A03.A0E().A4H();
            this.A00.ABm(this, JG.A00(AdErrorType.NO_FILL));
            return;
        }
        this.A06 = new FE(this, c1574aaA00);
        TA ta = new TA(this.A03, (WeakReference<NE>) new WeakReference(this.A06), c8g.A04(), A6N());
        this.A07 = ta;
        ta.A0G(c8g.A07(), c8g.A08());
        C1585al c1585al = new C1585al(this);
        C0978Dz c0978Dz = this.A03;
        InterfaceC1086If interfaceC1086If = this.A04;
        TA ta2 = this.A07;
        C1572aY c1572aY = new C1572aY(c0978Dz, interfaceC1086If, ta2, ta2.getViewabilityChecker(), c1585al);
        this.A01 = c1572aY;
        c1572aY.A08(c1574aaA00);
        this.A07.loadDataWithBaseURL(NH.A01(AdInternalSettings.getUrlPrefix()), c1574aaA00.A04(), A08(31, 9, 97), A08(40, 5, 52), null);
        this.A0D = true;
        A09();
    }

    private void A0F(JJ jj, C8G c8g) {
        if (this.A02 == null || this.A04 == null) {
            return;
        }
        int iA02 = (int) (jj.A02() * Resources.getSystem().getDisplayMetrics().density);
        if (IP.A1j(this.A03) && C07935q.A0A(this.A02.A0U())) {
            new C07935q(new C6Q(this.A03), this.A02.A0U(), this.A02.A0O(), this.A02.A0R(), true, new C1589ap(this, iA02, c8g, this)).A0B();
        } else {
            A0B(iA02, c8g);
        }
    }

    public final void A0I(C0978Dz c0978Dz, InterfaceC1086If interfaceC1086If, JJ jj, InterfaceC06720w interfaceC06720w, C06941s c06941s) {
        c0978Dz.A0E().A3d();
        this.A03 = c0978Dz;
        this.A04 = interfaceC1086If;
        this.A00 = interfaceC06720w;
        this.A0F = IP.A1N(c0978Dz.getApplicationContext());
        C8G c8gA01 = c06941s.A01();
        F6 f6A02 = F6.A02(c06941s.A03(), this.A03);
        this.A02 = f6A02;
        if (f6A02.A0k()) {
            A0F(jj, c8gA01);
        } else {
            A0E(c8gA01, c06941s);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final String A6N() {
        return this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final AdPlacementType A7W() {
        return AdPlacementType.BANNER;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final boolean AFs() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final void onDestroy() {
        this.A03.A0E().A3b(this.A07 != null);
        TA ta = this.A07;
        if (ta != null) {
            ta.destroy();
            this.A07 = null;
            this.A06 = null;
        }
    }
}
