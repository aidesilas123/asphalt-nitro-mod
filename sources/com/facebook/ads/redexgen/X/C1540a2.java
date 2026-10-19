package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1540a2 implements Ji {
    public static byte[] A0E;
    public static String[] A0F = {"Um", "5O6Pi5UhekEiJBNtL2", "ByBiFstlzS", "VNZICTTmM6bBZ", "I3ykA2cHAONkN", "xnUs6VMzToWHuFoC", "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp", "LFB8Dcv49A6aPeUL"};
    public InterfaceC06971v A00;
    public C8F A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final Handler A05;
    public final AdSize A06;
    public final C06690t A07;
    public final YA A08;
    public final InterfaceC1086If A09;
    public final JL A0A;
    public final C1114Jj A0B;
    public final Runnable A0C;
    public final String A0D;

    static {
        A05();
        LX.A02();
    }

    public C1540a2(YA ya, String str, JL jl, AdSize adSize, int i) {
        this.A08 = ya;
        this.A0D = str;
        this.A0A = jl;
        this.A06 = adSize;
        this.A04 = i;
        C1114Jj c1114Jj = new C1114Jj(ya);
        this.A0B = c1114Jj;
        c1114Jj.A0P(this);
        this.A07 = new C06690t();
        this.A03 = true;
        this.A05 = new Handler();
        this.A0C = new C0985Eg(this);
        this.A09 = ya.A09();
        DynamicLoaderFactory.makeLoader(ya).getInitApi().onAdLoadInvoked(ya);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0F[2].length() != 10) {
                throw new RuntimeException();
            }
            A0F[1] = "uoxYJqIRleds8fPMMv";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
            i4++;
        }
    }

    private List<C1581ah> A04() {
        C8F c8f = this.A01;
        ArrayList arrayList = new ArrayList(c8f.A02());
        for (C8D c8dA04 = c8f.A04(); c8dA04 != null; c8dA04 = c8f.A04()) {
            InterfaceC06640o interfaceC06640oA00 = this.A07.A00(this.A08, AdPlacementType.NATIVE);
            if (interfaceC06640oA00 != null && interfaceC06640oA00.A7W() == AdPlacementType.NATIVE) {
                C1581ah c1581ah = (C1581ah) interfaceC06640oA00;
                c1581ah.A0L(this.A08, new C0992En(this, arrayList, c1581ah), this.A09, new C06941s(c8dA04.A04(), c8f.A05(), this.A0D, c8f.A05().A0C()), UJ.A0K());
            }
        }
        return arrayList;
    }

    public static void A05() {
        byte[] bArr = {64, 65, -14, 66, 62, 51, 53, 55, 63, 55, 64, 70, -14, 59, 64, -14, 68, 55, 69, 66, 65, 64, 69, 55};
        if (A0F[0].length() != 2) {
            throw new RuntimeException();
        }
        A0F[1] = "dKV76OJFyRmVPWeRzZ";
        A0E = bArr;
    }

    public final void A06() {
        this.A03 = false;
        this.A05.removeCallbacks(this.A0C);
    }

    public final void A07() {
        try {
            JQ jq = new JQ(this.A08, null, null, null);
            YA ya = this.A08;
            String str = this.A0D;
            AdSize adSize = this.A06;
            this.A0B.A0O(new C1112Jg(ya, str, adSize != null ? new L7(adSize.getWidth(), this.A06.getHeight()) : null, this.A0A, null, this.A04, AdSettings.isTestMode(this.A08), AdSettings.isMixedAudience(), jq, LD.A01(IP.A0J(this.A08)), this.A02, null));
        } catch (JH e2) {
            ABH(JG.A02(e2));
        }
    }

    public final void A08(InterfaceC06971v interfaceC06971v) {
        this.A00 = interfaceC06971v;
    }

    public final void A09(String str) {
        this.A02 = str;
    }

    public final boolean A0A() {
        C8F c8f = this.A01;
        return c8f == null || c8f.A0D();
    }

    @Override // com.facebook.ads.redexgen.X.Ji
    public final void ABH(JG jg) {
        if (this.A03) {
            this.A05.postDelayed(this.A0C, 1800000L);
        }
        InterfaceC06971v interfaceC06971v = this.A00;
        if (A0F[2].length() != 10) {
            throw new RuntimeException();
        }
        A0F[2] = "yGn7NPCZVX";
        if (interfaceC06971v != null) {
            interfaceC06971v.ABH(jg);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Ji
    public final void AD5(U6 u6) {
        C8F c8fA00 = u6.A00();
        if (c8fA00 == null) {
            throw new IllegalStateException(A03(0, 24, 123));
        }
        if (this.A03) {
            long jA0A = c8fA00.A05().A0A();
            if (jA0A == 0) {
                jA0A = 1800000;
            }
            this.A05.postDelayed(this.A0C, jA0A);
        }
        this.A01 = c8fA00;
        List<C1581ah> listA04 = A04();
        if (this.A00 != null) {
            if (listA04.isEmpty()) {
                this.A00.ABH(JG.A01(AdErrorType.NO_FILL, A03(0, 0, 68)));
            } else {
                this.A00.ACD(listA04);
            }
        }
    }
}
