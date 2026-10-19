package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class PN extends FrameLayout {
    public static byte[] A0C;
    public static String[] A0D = {"2LrpfYyae0azpeRldXrTpIs5j5WolZYJ", "aTWFoH17M5HvBaS06GyoTMgY8LK09kB1", "ZT9jJV1ne", "vwbwskwEgIVHj6V8wHV", "a8UIfMhCahgZVDol7QIaAFMNjSR7v8Rm", "pauq9xVSe1TSbn6Nh8iDWIypG", "tig0s2h3zWgeN1kA13N6tuAlrnUP1dby", "gu60Pcp0oAdbO9RcUpkXMIBgrMh0CW0V"};
    public static final float A0E;
    public static final RelativeLayout.LayoutParams A0F;
    public int A00;
    public long A01;
    public Map<String, String> A02;
    public final AbstractC1566aS A03;
    public final C1Z A04;
    public final YA A05;
    public final InterfaceC1086If A06;
    public final NE A07;
    public final TA A08;
    public final PL A09;
    public final AtomicBoolean A0A;
    public final AtomicBoolean A0B;

    static {
        A09();
        A0E = (int) (C1148Ku.A02 * 4.0f);
        A0F = new RelativeLayout.LayoutParams(-1, -1);
    }

    public PN(YA ya, AbstractC1566aS abstractC1566aS, C1Z c1z, InterfaceC1086If interfaceC1086If, PL pl, Map<String, String> map) {
        super(ya);
        this.A0A = new AtomicBoolean(false);
        this.A0B = new AtomicBoolean(false);
        this.A01 = -1L;
        this.A00 = 0;
        this.A07 = new TD() { // from class: com.facebook.ads.redexgen.X.7G
            @Override // com.facebook.ads.redexgen.X.NE
            public final void AAY() {
            }

            @Override // com.facebook.ads.redexgen.X.TD, com.facebook.ads.redexgen.X.NE
            public final void ABM(int i, String str) {
                this.A00.A0B.set(true);
                this.A00.A09.ABu();
            }

            @Override // com.facebook.ads.redexgen.X.TD, com.facebook.ads.redexgen.X.NE
            public final void ABZ() {
                if (this.A00.A0B.get() || !this.A00.A0A.compareAndSet(false, true)) {
                    return;
                }
                this.A00.A09.ABZ();
            }

            @Override // com.facebook.ads.redexgen.X.NE
            public final void ADZ() {
                this.A00.A09.ADZ();
            }
        };
        this.A05 = ya;
        this.A03 = abstractC1566aS;
        this.A04 = c1z;
        this.A06 = interfaceC1086If;
        this.A09 = pl;
        this.A02 = map;
        TA taA04 = A04();
        this.A08 = taA04;
        if (IP.A1X(ya)) {
            ya.A0A().AGA(taA04, abstractC1566aS.A11(), false);
        }
        addView(taA04, A0F);
    }

    public static /* synthetic */ int A00(PN pn) {
        int i = pn.A00;
        pn.A00 = i + 1;
        return i;
    }

    private TA A04() {
        TA ta = new TA(this.A05, (WeakReference<NE>) new WeakReference(this.A07), 10, IP.A1e(this.A05));
        ta.setCornerRadius(A0E);
        ta.setLogMultipleImpressions(false);
        ta.setCheckAssetsByJavascriptBridge(false);
        ta.setWebViewTimeoutInMillis(this.A04.A08());
        ta.setRequestId(this.A03.A0R());
        ta.setOnTouchListener(new PM(this));
        WebSettings settings = ta.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setAllowFileAccess(true);
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowFileAccessFromFileURLs(true);
        }
        if (Build.VERSION.SDK_INT > 16) {
            ta.addJavascriptInterface(new PO(this.A05, this, this.A06, this.A02, this.A03.A11()), A06(0, 12, 104));
        }
        return ta;
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            if (A0D[5].length() != 25) {
                throw new RuntimeException();
            }
            A0D[4] = "2xsSJQdmJTzWNKbVkLPVv70adF3crTtp";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 37);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0C = new byte[]{Ascii.VT, 47, Ascii.GS, 33, 44, 52, 44, 47, 33, 40, Ascii.FF, 41, 52, 5, Ascii.SYN, Ascii.ETB, Ascii.CR, 10, 3, 68, 1, Ascii.SYN, Ascii.SYN, Ascii.VT, Ascii.SYN, 52, 8, 5, Ascii.GS, 5, 6, 8, 1, 68, 0, Ascii.VT, 39, Ascii.DLE, 5, 39, 8, Ascii.CR, 7, Ascii.SI, 68, Ascii.DLE, Ascii.SYN, Ascii.CR, 3, 3, 1, Ascii.SYN, 1, 0, 68, 19, Ascii.CR, Ascii.DLE, Ascii.FF, 68, Ascii.DC4, Ascii.SYN, 1, 73, 1, Ascii.DC2, 1, 10, Ascii.DLE, 68, 7, 8, Ascii.CR, 7, Ascii.SI, Ascii.ETB, 68, 7, Ascii.VT, 17, 10, Ascii.DLE, 68, 5, 10, 0, 68, 32, 1, 8, 5, Ascii.GS, 106, 86, 91, 67, 91, 88, 86, 95, 123, 94, 73, 108, 83, 95, 77, 102, 97, 99, 109, 106, 36, 104, 107, 101, 96, 109, 106, 99, 36, 118, 97, 105, 107, 112, 97, 36, 116, 104, 101, 125, 101, 102, 104, 97, 61, 50, 55, 61, 53, 45, 112, 113, 120, 117, 109, 93, 65, 76, 84, 76, 79, 65, 72, 55, 43, 38, 62, 38, 37, 43, 34, Ascii.CAN, 53, 34, 42, 40, 51, 34, Ascii.NAK, 2, 10, 8, 19, 2, 56, Ascii.DC4, 2, Ascii.DC4, Ascii.DC4, Ascii.SO, 8, 9, 56, Ascii.SO, 3, Ascii.DC4, Ascii.SI, Ascii.VT, 5, Ascii.SO, 107, 121, 126, 67, 106, 117, 121, 107};
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00b8, code lost:
    
        if (r3 <= com.facebook.ads.redexgen.X.IP.A0H(r8)) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ba, code lost:
    
        r3 = r9.A09;
        r2 = com.facebook.ads.redexgen.X.PN.A0D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ce, code lost:
    
        if (r2[0].charAt(14) == r2[7].charAt(14)) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00d0, code lost:
    
        r3.AAy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00d3, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00d4, code lost:
    
        r2 = com.facebook.ads.redexgen.X.PN.A0D;
        r2[0] = "1qrV4xG42mjJ5wR1PYF4mguO0xYm8sMw";
        r2[7] = "To2gWJFbGkwQ4PRGYAw3BZd3UXo54AHv";
        r3.AAy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f2, code lost:
    
        if (r3 <= com.facebook.ads.redexgen.X.IP.A0H(r8)) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00f5, code lost:
    
        r6.A03(0);
        r9.A05.A07().A9M(r5, com.facebook.ads.redexgen.X.C08417x.A2D, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0A() {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.PN.A0A():void");
    }

    public final void A0B() {
        if (this.A04.A0J()) {
            C08427y c08427y = new C08427y(A06(107, 29, 33));
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(A06(170, 17, 66), this.A04.A0F());
                jSONObject.put(A06(187, 5, 69), this.A03.A11());
            } catch (JSONException e2) {
                Log.e(A06(92, 15, 31), A06(12, 13, 65), e2);
            }
            c08427y.A05(jSONObject);
            c08427y.A03(1);
            InterfaceC08407w interfaceC08407wA07 = this.A05.A07();
            if (A0D[4].charAt(0) == 'P') {
                throw new RuntimeException();
            }
            A0D[1] = "TEDpWyR4sKSlO4xRZxixfnQAFgDgpHMF";
            int i = C08417x.A2F;
            String strA06 = A06(155, 15, 98);
            interfaceC08407wA07.A9N(strA06, i, c08427y);
            if (IP.A0o(this.A05) && LK.A00(this.A05) == LJ.A07) {
                this.A05.A07().A9N(strA06, C08417x.A2E, c08427y);
                this.A07.ABM(0, null);
                return;
            }
        }
        try {
            this.A08.loadUrl(!TextUtils.isEmpty(this.A04.A0B()) ? this.A04.A0B() : this.A04.A0E());
        } catch (Exception e3) {
            this.A05.A07().A9M(A06(PsExtractor.AUDIO_STREAM, 8, 57), C08417x.A2c, new C08427y(e3));
        }
    }

    public final void A0C() {
        if (IP.A1X(this.A05)) {
            YA ya = this.A05;
            if (A0D[2].length() == 31) {
                throw new RuntimeException();
            }
            A0D[1] = "2a9geg5CZy9bcTekyOeVTlcxLNQduX9G";
            ya.A0A().AFz(this.A08);
        }
        this.A08.removeJavascriptInterface(A06(0, 12, 104));
        if (A0D[3].length() == 23) {
            this.A08.destroy();
        } else {
            A0D[6] = "33aduEcFLWt6pdjLdZ5sJJvVvr5WDkst";
            this.A08.destroy();
        }
    }

    public LN getTouchDataRecorder() {
        return this.A08.getTouchDataRecorder();
    }

    public C1285Qb getViewabilityChecker() {
        return this.A08.getViewabilityChecker();
    }
}
