package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class S0 extends AbstractC07594h {
    public static byte[] A0H;
    public static String[] A0I = {"vVts3290hN8iYOphvTtUHsw8p", "g", "QXZRYfiopoOIgyOb", "uRY3EBcOhcPzIFCW", "1yhQGC5wOot73mjsntHrCCOy6H7", "ngPHprqJPXgJBcmGEhNrmzVf2B4dA5Oh", "DCeBbFrEMIUsiq6", "addqTveDrmk"};
    public OM A02;
    public C1285Qb A04;
    public List<PC> A05;
    public boolean A09;
    public final int A0A;
    public final Context A0B;
    public final ZC A0C;
    public final AbstractC07664p A0D;
    public final Set<Integer> A0G = new HashSet();
    public boolean A08 = true;
    public boolean A06 = true;
    public boolean A07 = true;
    public int A01 = -1;
    public float A00 = 0.0f;
    public final OQ A0F = new S3(this);
    public OO A03 = new S2(this);
    public final OP A0E = new S1(this);

    static {
        A08();
    }

    public S0(C2O c2o, int i, List<PC> list, C1285Qb c1285Qb, Bundle bundle) {
        this.A0C = c2o.getLayoutManager();
        this.A0A = i;
        this.A05 = list;
        this.A04 = c1285Qb;
        this.A0D = new ZB(c2o.getContext());
        this.A0B = c2o.getContext();
        c2o.A1k(this);
        A0D(bundle);
    }

    private AbstractC1346Sk A03(int i, int i2) {
        return A04(i, i2, true);
    }

    private AbstractC1346Sk A04(int i, int i2, boolean z) {
        AbstractC1346Sk abstractC1346Sk = null;
        while (i <= i2) {
            AbstractC1346Sk abstractC1346Sk2 = (AbstractC1346Sk) this.A0C.A1q(i);
            if (abstractC1346Sk2 == null || abstractC1346Sk2.A16()) {
                return null;
            }
            boolean zA0b = A0b(abstractC1346Sk2);
            if (A0I[2].length() != 16) {
                throw new RuntimeException();
            }
            A0I[0] = "";
            if (abstractC1346Sk == null && abstractC1346Sk2.A17() && zA0b && !this.A0G.contains(Integer.valueOf(i)) && (!z || A0I(abstractC1346Sk2, this.A0A))) {
                abstractC1346Sk = abstractC1346Sk2;
            }
            if (abstractC1346Sk2.A17() && !zA0b) {
                A0C(i, false);
            }
            i++;
        }
        return abstractC1346Sk;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 126);
        }
        return new String(bArrCopyOfRange);
    }

    private void A06() {
        AbstractC1346Sk abstractC1346SkA03;
        if (this.A07 && (abstractC1346SkA03 = A03(this.A0C.A28(), this.A0C.A29())) != null) {
            abstractC1346SkA03.A14();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() {
        int iA27 = this.A0C.A27();
        if (iA27 == -1 || iA27 >= this.A05.size() - 1) {
            return;
        }
        A0V(iA27 + 1);
    }

    public static void A08() {
        A0H = new byte[]{-26, -6, -7, -12, 4, -11, -15, -26, -2, 4, -22, -13, -26, -25, -15, -22, -23, 4, -11, -26, -9, -26, -14, 7, 17, Ascii.GS, 4, 7, Ascii.DLE, 17, Ascii.DC2, Ascii.GS, Ascii.DC4, 7, 2, 3, Ascii.CR, Ascii.GS, Ascii.SO, -1, Ascii.DLE, -1, Ascii.VT, -5, -12, -15, -6, -14, -22, 4, -15, -22, -5, -22, -15, 4, -11, -26, -9, -26, -14};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09(int i) {
        AbstractC1346Sk abstractC1346SkA04 = A04(i + 1, this.A0C.A29(), false);
        if (abstractC1346SkA04 != null) {
            abstractC1346SkA04.A14();
            A0V(((Integer) abstractC1346SkA04.getTag(-1593835536)).intValue());
        }
    }

    private void A0A(int i, int i2) {
        while (i <= i2) {
            A0T(i);
            i++;
        }
    }

    private final void A0B(int i, int i2) {
        A0S(i);
        A0S(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(int i, boolean z) {
        if (z) {
            this.A0G.add(Integer.valueOf(i));
        } else {
            this.A0G.remove(Integer.valueOf(i));
        }
    }

    private void A0D(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.A00 = bundle.getFloat(A05(43, 18, 39), 0.0f);
        this.A07 = bundle.getBoolean(A05(0, 23, 39), true);
        this.A08 = bundle.getBoolean(A05(23, 20, 64), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0H() {
        return IP.A2H(this.A0B) || this.A0A == 1;
    }

    public static boolean A0I(AbstractC1227Nv abstractC1227Nv, int i) {
        int width;
        if (i == 2) {
            int i2 = C1148Ku.A03.widthPixels;
            if (A0I[5].charAt(29) != '5') {
                throw new RuntimeException();
            }
            A0I[0] = "Sny8hSa0LYjBAej7q";
            width = i2 - 1;
        } else {
            width = (int) (((abstractC1227Nv.getWidth() + C1148Ku.A03.widthPixels) * 1.3f) / 2.0f);
        }
        return ((int) (abstractC1227Nv.getX() + ((float) abstractC1227Nv.getWidth()))) <= width && abstractC1227Nv.getX() >= ((float) (i == 2 ? 1 : (int) ((((float) (C1148Ku.A03.widthPixels - abstractC1227Nv.getWidth())) * 0.7f) / 2.0f)));
    }

    private boolean A0J(AbstractC1346Sk abstractC1346Sk) {
        if (!this.A08 || !abstractC1346Sk.A17()) {
            return false;
        }
        this.A08 = false;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07594h
    public void A0L(ED ed, int i) {
        super.A0L(ed, i);
        if (i == 0) {
            this.A09 = true;
            A06();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07594h
    public void A0M(ED ed, int i, int i2) {
        super.A0M(ed, i, i2);
        this.A09 = false;
        if (this.A06) {
            this.A09 = true;
            A06();
            this.A06 = false;
        }
        int iA28 = this.A0C.A28();
        int iA29 = this.A0C.A29();
        A0B(iA28, iA29);
        A0A(iA28, iA29);
        A0W(iA28, iA29, i);
    }

    public final OO A0N() {
        return this.A03;
    }

    public final OP A0O() {
        return this.A0E;
    }

    public final OQ A0P() {
        return this.A0F;
    }

    public final void A0Q() {
        this.A01 = -1;
        int iA29 = this.A0C.A29();
        for (int iA28 = this.A0C.A28(); iA28 <= iA29 && iA28 >= 0; iA28++) {
            AbstractC1346Sk abstractC1346Sk = (AbstractC1346Sk) this.A0C.A1q(iA28);
            if (abstractC1346Sk != null && abstractC1346Sk.A16()) {
                this.A01 = iA28;
                abstractC1346Sk.A13();
                return;
            }
        }
    }

    public final void A0R() {
        AbstractC1346Sk abstractC1346Sk = (AbstractC1346Sk) this.A0C.A1q(this.A01);
        if (abstractC1346Sk == null || this.A01 < 0) {
            return;
        }
        abstractC1346Sk.A14();
    }

    public final void A0S(int i) {
        AbstractC1346Sk abstractC1346Sk = (AbstractC1346Sk) this.A0C.A1q(i);
        if (abstractC1346Sk == null || A0b(abstractC1346Sk)) {
            return;
        }
        String[] strArr = A0I;
        if (strArr[6].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        A0I[0] = "Vxamqv9qm4zlsVVB8";
        A0a(abstractC1346Sk, false);
    }

    public final void A0T(int i) {
        List<PC> list;
        AbstractC1346Sk abstractC1346Sk = (AbstractC1346Sk) this.A0C.A1q(i);
        if (abstractC1346Sk == null) {
            return;
        }
        if (A0b(abstractC1346Sk)) {
            A0a(abstractC1346Sk, true);
        }
        if (!A0J(abstractC1346Sk) || (list = this.A05) == null) {
            return;
        }
        this.A0F.setVolume(list.get(((Integer) abstractC1346Sk.getTag(-1593835536)).intValue()).A03().A0D().A09() ? 0.0f : 1.0f);
    }

    public final void A0U(int i) {
        A0A(i, i);
    }

    public final void A0V(int i) {
        this.A0D.A0A(i);
        this.A0C.A1L(this.A0D);
    }

    public final void A0W(int i, int i2, int i3) {
        if (!A0H() || this.A02 == null) {
            return;
        }
        int iA27 = this.A0C.A27();
        if (iA27 == -1) {
            iA27 = i3 < 0 ? i : i2;
        }
        this.A02.AG4(iA27);
    }

    public final void A0X(Bundle bundle) {
        bundle.putFloat(A05(43, 18, 39), this.A00);
        bundle.putBoolean(A05(0, 23, 39), this.A07);
        bundle.putBoolean(A05(23, 20, 64), this.A08);
    }

    public void A0Y(View view, boolean z) {
        view.setAlpha(z ? 1.0f : 0.5f);
    }

    public final void A0Z(OM om) {
        this.A02 = om;
    }

    public void A0a(AbstractC1346Sk abstractC1346Sk, boolean z) {
        if (A0H()) {
            A0Y(abstractC1346Sk, z);
        }
        if (z) {
            return;
        }
        boolean zA16 = abstractC1346Sk.A16();
        String[] strArr = A0I;
        if (strArr[6].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        A0I[2] = "slnyAJQBNPORwedJ";
        if (zA16) {
            abstractC1346Sk.A13();
        }
    }

    public boolean A0b(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.15f;
    }
}
