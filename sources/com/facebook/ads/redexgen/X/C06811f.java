package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1f, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C06811f {
    public static byte[] A05;
    public static String[] A06 = {"jJreqFAWfQsm2UlBXjWleQZy51A8w9r3", "B5vxrqY9e1pfFDILbPSJEQZe5Zep9JAF", "7hwRhDIA2xM98ucsNVPICP0872", "8yYdfjKxcW1uK5E8nS4F9bT", "cwoTvwLLOWGZrFwonmn2qn9xu", "wuc4L", "VoE60CbUCih", "1JGxuEjawtyxaKItdz1AQ1lnM"};
    public C6Q A00;
    public NP A01 = NP.A06;
    public ArrayList<C1239Oh> A02 = new ArrayList<>();
    public final C1C A03;
    public final InterfaceC06801e A04;

    static {
        A06();
    }

    public C06811f(YA ya, C06941s c06941s, InterfaceC06801e interfaceC06801e, String str) {
        this.A03 = A01(ya, c06941s, str, c06941s.A03());
        this.A04 = interfaceC06801e;
    }

    private AdError A00(YA ya, AbstractC1566aS abstractC1566aS) {
        if (abstractC1566aS != null && !abstractC1566aS.A13().isEmpty()) {
            return null;
        }
        ya.A07().A9M(A04(62, 3, 18), C08417x.A0Z, new C08427y(A04(5, 43, 6)));
        return AdError.internalError(2006);
    }

    public static C1C A01(YA ya, C06941s c06941s, String str, JSONObject jSONObject) {
        C1C c1cA02 = null;
        if (jSONObject.has(A04(65, 12, 2))) {
            try {
                c1cA02 = C1564aQ.A03(jSONObject, ya, true);
                c1cA02.A0c(true);
                c1cA02.A0Z(A04(96, 12, 17));
            } catch (JSONException unused) {
            }
        }
        if (c1cA02 == null) {
            c1cA02 = F0.A02(jSONObject, ya);
        }
        c1cA02.A0Y(str);
        C8G c8gA01 = c06941s.A01();
        if (c8gA01 != null) {
            c1cA02.A0V(c8gA01.A06());
        }
        return c1cA02;
    }

    private C6Q A03(YA ya) {
        C6Q c6q = this.A00;
        return c6q != null ? c6q : new C6Q(ya);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 96);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{-97, -39, -27, -34, -35, -81, -44, -38, -53, -40, -44, -57, -46, -122, -85, -40, -40, -43, -40, -122, -104, -106, -106, -100, -122, -35, -49, -38, -50, -43, -37, -38, -122, -57, -122, -36, -57, -46, -49, -54, -122, -89, -54, -81, -44, -52, -43, -108, Ascii.US, 34, Ascii.GS, 34, Ascii.US, 50, Ascii.US, Ascii.GS, 32, 51, 44, 34, 42, 35, -45, -30, -37, -59, -54, -61, -53, -48, -63, -46, -61, -44, -61, -49, -43, -42, -37, -44, -36, -31, -40, -41, -76, -41, -73, -44, -25, -44, -75, -24, -31, -41, -33, -40, -38, -33, -27, -42, -29, -28, -27, -38, -27, -38, -46, -35};
    }

    private void A08(YA ya, F0 f0) {
        C1Z c1zA06 = f0.A0v().A0D().A06();
        A0B(c1zA06 != null ? c1zA06.A0A() : NP.A06);
        C1555aH c1555aH = new C1555aH(this);
        C6Q c6q = new C6Q(ya);
        boolean z = IP.A1j(ya) && C07935q.A0A(f0.A0U());
        if (!z) {
            C06911p.A02(ya, f0, true, c1555aH);
            return;
        }
        C07935q c07935q = new C07935q(c6q, f0.A0U(), f0.A0O(), f0.A0R(), z, new C1554aG(this));
        c6q.A0d(new C1094In(f0.A11(), ya.A09()));
        c07935q.A0B();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A09(com.facebook.ads.redexgen.X.YA r25, java.util.EnumSet<com.facebook.ads.CacheFlag> r26, com.facebook.ads.redexgen.X.AbstractC1566aS r27, int r28, com.facebook.ads.redexgen.X.InterfaceC06801e r29) {
        /*
            Method dump skipped, instruction units count: 521
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C06811f.A09(com.facebook.ads.redexgen.X.YA, java.util.EnumSet, com.facebook.ads.redexgen.X.aS, int, com.facebook.ads.redexgen.X.1e):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A(YA ya, EnumSet<CacheFlag> enumSet, C1564aQ c1564aQ, AbstractC1566aS abstractC1566aS, int i, InterfaceC06801e interfaceC06801e) {
        A09(ya, enumSet, abstractC1566aS, i, new C1560aM(this, ya, abstractC1566aS, c1564aQ, i, interfaceC06801e, enumSet));
    }

    private void A0B(NP np) {
        this.A01 = np;
    }

    private boolean A0C(YA ya, AbstractC1566aS abstractC1566aS) {
        AdError adErrorA00 = A00(ya, abstractC1566aS);
        if (adErrorA00 == null) {
            return false;
        }
        InterfaceC06801e interfaceC06801e = this.A04;
        String[] strArr = A06;
        if (strArr[1].charAt(24) != strArr[0].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[1] = "Dm6wm58uJ8qXwjtNx8Vtzbsb5Jkw9mit";
        strArr2[0] = "fLwuuFNg4tiwPdo6hP9t6x3v5l5Hcavg";
        interfaceC06801e.AAP(adErrorA00);
        return true;
    }

    public final C1C A0D() {
        return this.A03;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ab, code lost:
    
        if (r3 != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00af, code lost:
    
        return com.facebook.ads.redexgen.X.EnumC1121Jq.A0C;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b7, code lost:
    
        if (r3 != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bc, code lost:
    
        return com.facebook.ads.redexgen.X.EnumC1121Jq.A0A;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.EnumC1121Jq A0E() {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.1C r0 = r4.A03
            boolean r0 = r0.A0h()
            if (r0 == 0) goto Lb
            com.facebook.ads.redexgen.X.Jq r0 = com.facebook.ads.redexgen.X.EnumC1121Jq.A03
            return r0
        Lb:
            com.facebook.ads.redexgen.X.1C r3 = r4.A03
            com.facebook.ads.redexgen.X.aS r3 = (com.facebook.ads.redexgen.X.AbstractC1566aS) r3
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C06811f.A06
            r0 = 6
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L50
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C06811f.A06
            java.lang.String r1 = "f4kXngrP8CD5dz"
            r0 = 3
            r2[r0] = r1
            boolean r0 = r3.A0k()
            if (r0 == 0) goto L31
            com.facebook.ads.redexgen.X.Jq r0 = com.facebook.ads.redexgen.X.EnumC1121Jq.A05
            return r0
        L31:
            java.util.List r0 = r3.A13()
            int r1 = r0.size()
            r0 = 1
            if (r1 <= r0) goto L5e
            com.facebook.ads.redexgen.X.Jq r3 = com.facebook.ads.redexgen.X.EnumC1121Jq.A09
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C06811f.A06
            r0 = 7
            r1 = r2[r0]
            r0 = 4
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L56
        L50:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L56:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C06811f.A06
            java.lang.String r1 = "ny"
            r0 = 3
            r2[r0] = r1
            return r3
        L5e:
            com.facebook.ads.redexgen.X.1D r0 = r3.A0v()
            com.facebook.ads.redexgen.X.1G r0 = r0.A0D()
            com.facebook.ads.redexgen.X.1Z r0 = r0.A06()
            if (r0 == 0) goto L8e
            com.facebook.ads.redexgen.X.Jq r3 = com.facebook.ads.redexgen.X.EnumC1121Jq.A0B
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C06811f.A06
            r0 = 6
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L88
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C06811f.A06
            java.lang.String r1 = "JH"
            r0 = 3
            r2[r0] = r1
            return r3
        L88:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L8e:
            boolean r3 = r4.A0L(r3)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C06811f.A06
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 32
            if (r1 == r0) goto Lb0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C06811f.A06
            java.lang.String r1 = "93R6MUXHMTxUt8WfLt1oZ3ea5zubl3sl"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "9xXPI1nVQC4CSUB4soKlPH985bh9DAt9"
            r0 = 0
            r2[r0] = r1
            if (r3 == 0) goto Lba
        Lad:
            com.facebook.ads.redexgen.X.Jq r0 = com.facebook.ads.redexgen.X.EnumC1121Jq.A0C
            return r0
        Lb0:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C06811f.A06
            java.lang.String r1 = "ySAy4b6nQ"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto Lba
            goto Lad
        Lba:
            com.facebook.ads.redexgen.X.Jq r0 = com.facebook.ads.redexgen.X.EnumC1121Jq.A0A
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C06811f.A0E():com.facebook.ads.redexgen.X.Jq");
    }

    public final NP A0F() {
        return this.A01;
    }

    public final String A0G() {
        return this.A03.A0h() ? ((C1564aQ) this.A03).A0v() : ((AbstractC1566aS) this.A03).A11();
    }

    public final void A0H() {
        this.A04.AG1();
    }

    public final void A0I(Intent intent, RewardData rewardData, String str) {
        this.A03.A0X(rewardData);
        this.A03.A0a(str);
        if (A0D().A0h()) {
            intent.putExtra(A04(77, 19, 19), this.A03);
        }
        intent.putExtra(A04(48, 14, 94), this.A03);
    }

    public final void A0J(YA ya, EnumSet<CacheFlag> enumSet) {
        if (A0E() == EnumC1121Jq.A03) {
            C1564aQ c1564aQ = (C1564aQ) this.A03;
            AbstractC1566aS abstractC1566aSA0s = c1564aQ.A0s();
            if (A0C(ya, abstractC1566aSA0s) || abstractC1566aSA0s == null) {
                return;
            }
            this.A04.AEL();
            A0A(ya, enumSet, c1564aQ, abstractC1566aSA0s, 0, this.A04);
            return;
        }
        if (A0C(ya, (AbstractC1566aS) this.A03)) {
            return;
        }
        this.A04.AEL();
        if (A0E() == EnumC1121Jq.A0B) {
            A08(ya, (F0) this.A03);
        } else {
            A09(ya, enumSet, (F0) this.A03, -1, this.A04);
        }
    }

    public final boolean A0K() {
        return this.A03.A0e();
    }

    public final boolean A0L(AbstractC1566aS abstractC1566aS) {
        return !TextUtils.isEmpty(abstractC1566aS.A0v().A0D().A08());
    }
}
