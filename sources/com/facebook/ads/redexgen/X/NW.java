package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class NW {
    public static byte[] A0A;
    public NV A00;
    public boolean A01;
    public boolean A02;
    public final C1R A03;
    public final YA A04;
    public final InterfaceC1086If A05;
    public final LN A06;
    public final InterfaceC1173Lt A07;
    public final C1285Qb A08;
    public final String A09;

    static {
        A02();
    }

    public NW(YA ya, String str, C1285Qb c1285Qb, LN ln, InterfaceC1086If interfaceC1086If, C1R c1r) {
        this(ya, str, c1285Qb, ln, interfaceC1086If, c1r, new T4());
    }

    public NW(YA ya, String str, C1285Qb c1285Qb, LN ln, InterfaceC1086If interfaceC1086If, C1R c1r, InterfaceC1173Lt interfaceC1173Lt) {
        this.A01 = true;
        this.A04 = ya;
        this.A09 = str;
        this.A08 = c1285Qb;
        this.A06 = ln;
        this.A05 = interfaceC1086If;
        this.A03 = c1r;
        this.A07 = interfaceC1173Lt;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{Ascii.US, 8, Ascii.GS, Ascii.RS, 41, 40, 40, 51, 50, Ascii.US, 48, 53, 63, 55, Ascii.DLE, 53, 47, 40, 57, 50, 57, 46, 114, 69, 69, 88, 69, Ascii.ETB, 82, 79, 82, 84, 66, 67, 94, 89, 80, Ascii.ETB, 86, 84, 67, 94, 88, 89, 73, 126, 126, 99, 126, 44, 123, 100, 101, 96, 105, 44, 99, 124, 105, 98, 101, 98, 107, 44};
    }

    public static void A03(YA ya, C1285Qb c1285Qb, LN ln, InterfaceC1086If interfaceC1086If, C1N c1n, String str, C1R c1r) {
        AbstractC06570g abstractC06570gA01 = C06580h.A01(ya, interfaceC1086If, str, C1132Kc.A00(c1n.A05()), new NL().A03(c1285Qb).A02(ln).A05(), false, false, c1r);
        if (abstractC06570gA01 != null) {
            abstractC06570gA01.A0A();
        }
    }

    private void A05(String str, String str2, Map<String, String> map) {
        this.A05.A9o(str, map);
        C1146Ks.A00(new NT(this, map, str, str2), new NU(this, str, map), ActivityUtils.A00());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(String str, String str2, Map<String, String> map) {
        String strA01 = A01(0, 22, 52);
        try {
            AbstractC06570g abstractC06570gA01 = C06580h.A01(this.A04, this.A05, str, C1132Kc.A00(str2), new NL(map).A03(this.A08).A02(this.A06).A05(), this.A01, this.A02, this.A03);
            if (abstractC06570gA01 != null) {
                abstractC06570gA01.A0C();
            }
            NV nv = this.A00;
            if (nv != null) {
                nv.AAz();
            }
            this.A07.A3z(this.A09);
        } catch (ActivityNotFoundException e2) {
            Log.e(strA01, A01(44, 20, 100) + str2, e2);
        } catch (Exception e3) {
            Log.e(strA01, A01(22, 22, 95), e3);
        }
    }

    public final void A07(NV nv) {
        this.A00 = nv;
    }

    public final void A08(String str, String str2, Map<String, String> map) {
        new C1094In(str, this.A05).A04(EnumC1093Im.A0J, map);
        if (this.A06.A09(this.A04)) {
            this.A05.A9I(str, map);
        } else if (IP.A1I(this.A04)) {
            A05(str, str2, map);
        } else {
            A06(str, str2, map);
        }
    }

    public final void A09(boolean z) {
        this.A02 = z;
    }

    public final void A0A(boolean z) {
        this.A01 = z;
    }
}
