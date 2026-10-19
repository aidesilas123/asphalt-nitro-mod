package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.view.View;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class UV extends C5O implements DefaultMediaViewVideoRendererApi {
    public static byte[] A0F;
    public static String[] A0G = {"mcYgxpLQMmIwsDd5yEmcOVEUvqtoI", "GHoJM0N9xHnxy27wJlEicj6316JJBG", "sAgmez8xlBVRjdgohc9cPNZKpCHjl", "UXd4O0RMEZeMz8rPKuZc9Jx8", "lkMSGOb1N9f2znZPpxO7v43dGPgWn", "ZJq7h5cFUWj9FCmvTSQNl6xA6rnC8", "yifDfgH7QVrqMR4w0vNHSMY9h4Ewh", "QZpfE8IVFABXRQwraZ"};
    public static final String A0H;
    public MediaViewVideoRenderer A00;
    public YA A01;
    public InterfaceC1104Ix A02;
    public AF A04;
    public C08086j A05;
    public ViewOnClickListenerC08036b A06;
    public AbstractC1284Qa A07;
    public C1285Qb A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final InterfaceC1263Pf A0C = new C1388Ub(this);
    public final AtomicBoolean A0D = new AtomicBoolean(false);
    public final AtomicBoolean A0E = new AtomicBoolean(false);
    public J9 A03 = J9.A03;

    static {
        A0E();
        A0H = UV.class.getSimpleName();
    }

    private C1387Ua A00(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C1387Ua(this, mediaViewVideoRendererApi);
    }

    private UZ A01(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new UZ(this, mediaViewVideoRendererApi);
    }

    private UX A02() {
        return new UX(this);
    }

    private C1285Qb A05() {
        return new C1285Qb(this.A00, 50, true, new WeakReference(this.A07), this.A01);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(bArrCopyOfRange);
    }

    private void A09() {
        AF af = this.A04;
        if (af != null) {
            C1264Pg c1264Pg = (C1264Pg) af.getVideoView();
            if (A0G[3].length() != 24) {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[2] = "uL1T6UePNJ7Kw1irCYcqiA1GlgiEZ";
            strArr[0] = "2BZHbySyGqLzqR4K5b7TQMpiAd64K";
            c1264Pg.setViewImplInflationListener(this.A0C);
        }
    }

    private void A0A() {
        AF af = this.A04;
        if (af != null) {
            af.getVideoView().setOnTouchListener(new ViewOnTouchListenerC1103Iw(this));
        }
    }

    private void A0B() {
        AF af = this.A04;
        if (af != null) {
            C1264Pg c1264Pg = (C1264Pg) af.getVideoView();
            String[] strArr = A0G;
            if (strArr[4].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            A0G[7] = "MUEPyY1MJMWvhU3XHu";
            c1264Pg.setViewImplInflationListener(null);
        }
    }

    private void A0C() {
        if (this.A00.getVisibility() == 0 && this.A09) {
            MediaViewVideoRenderer mediaViewVideoRenderer = this.A00;
            String[] strArr = A0G;
            if (strArr[4].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[4] = "vtumVYeB8x7vkBeCNzRl37Vgwgf5m";
            strArr2[1] = "l5c2Nb35iHyego1JNAmcVzJY15xyfp";
            if (mediaViewVideoRenderer.hasWindowFocus()) {
                this.A08.A0U();
                return;
            }
        }
        AF af = this.A04;
        if (af != null && af.getState() == QY.A05) {
            this.A0B = true;
        }
        this.A08.A0V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D() {
        this.A03 = J9.A03;
        A0B();
    }

    public static void A0E() {
        A0F = new byte[]{7, 32, 56, 47, 34, 39, 42, 110, 60, 43, 32, 42, 43, 60, 43, 60, 110, 45, 38, 39, 34, 42, 110, 45, 33, 32, 40, 39, 41, 96, Ascii.SO, 38, 39, 42, 34, Ascii.NAK, 42, 38, 52, Ascii.NAK, 42, 39, 38, 44, 99, 42, 48, 99, 45, 54, 47, 47, 120, 99, 54, 45, 34, 33, 47, 38, 99, 55, 44, 99, 37, 42, 45, 39, 99, 42, 55, 109, Ascii.DLE, 43, 36, 39, 41, 32, 101, 49, 42, 101, 35, 44, 43, 33, 101, 8, 32, 33, 44, 36, 19, 44, 32, 50, 19, 44, 33, 32, 42, 101, 38, 45, 44, 41, 33, 107};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0I(com.facebook.ads.redexgen.X.UJ r6, com.facebook.ads.redexgen.X.InterfaceC1104Ix r7) {
        /*
            r5 = this;
            r0 = 0
            r5.A0A = r0
            r5.A0B = r0
            r5.A02 = r7
            r5.A09()
            com.facebook.ads.redexgen.X.6j r3 = r5.A05
            if (r6 == 0) goto L3c
            com.facebook.ads.redexgen.X.J4 r4 = r6.getAdCoverImage()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.UV.A0G
            r0 = 2
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L2a
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L2a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.UV.A0G
            java.lang.String r1 = "zpp3cHPhluFOPvL30kkcY8af"
            r0 = 3
            r2[r0] = r1
            if (r4 == 0) goto L3c
            com.facebook.ads.redexgen.X.J4 r0 = r6.getAdCoverImage()
            java.lang.String r1 = r0.getUrl()
            goto L3d
        L3c:
            r1 = 0
        L3d:
            com.facebook.ads.redexgen.X.UY r0 = new com.facebook.ads.redexgen.X.UY
            r0.<init>(r5)
            r3.setImage(r1, r0)
            com.facebook.ads.redexgen.X.J9 r0 = r6.A18()
            r5.A03 = r0
            com.facebook.ads.redexgen.X.6b r1 = r5.A06
            java.lang.String r0 = r6.A1E()
            r1.setPlayAccessibilityLabel(r0)
            com.facebook.ads.redexgen.X.6b r1 = r5.A06
            java.lang.String r0 = r6.A1D()
            r1.setPauseAccessibilityLabel(r0)
            com.facebook.ads.redexgen.X.Qb r0 = r5.A08
            r0.A0U()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.UV.A0I(com.facebook.ads.redexgen.X.UJ, com.facebook.ads.redexgen.X.Ix):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J(EnumC1267Pj enumC1267Pj) {
        AF af = this.A04;
        if (af != null) {
            af.A0b(enumC1267Pj, 24);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.e(A0H, A06(30, 42, 60));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0K() {
        AF af = this.A04;
        if (af == null || af.getState() == QY.A06) {
            return false;
        }
        return this.A03 == J9.A05 || this.A03 == J9.A03;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a4, code lost:
    
        r3 = r6.A04;
        r2 = com.facebook.ads.redexgen.X.UV.A0G;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b6, code lost:
    
        if (r2[2].length() == r2[0].length()) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c1, code lost:
    
        r2 = com.facebook.ads.redexgen.X.UV.A0G;
        r2[6] = "2aK7TrzSKlLOXQMMYyslcv3rZKnIT";
        r2[5] = "rJ0uIs3irNdkufru0tgAA9z3l7YlJ";
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00cd, code lost:
    
        if (r3 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d3, code lost:
    
        if (com.facebook.ads.internal.settings.AdInternalSettings.isDebugBuild() == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d5, code lost:
    
        android.util.Log.e(com.facebook.ads.redexgen.X.UV.A0H, A06(72, 36, 58));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e4, code lost:
    
        r6.A08.A0W(0);
        r6.A08.A0X(250);
        r4.AFI();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f3, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f4, code lost:
    
        r3.A0c(r6.A05);
        r3 = r6.A04;
        r2 = com.facebook.ads.redexgen.X.UV.A0G;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x010b, code lost:
    
        if (r2[6].length() == r2[5].length()) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0112, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0113, code lost:
    
        com.facebook.ads.redexgen.X.UV.A0G[3] = "N5wNlZvELtjdUjcESL7VUEU7";
        r3.A0c(r6.A06);
     */
    @Override // com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void initialize(android.content.Context r7, com.facebook.ads.MediaViewVideoRenderer r8, com.facebook.ads.internal.api.MediaViewVideoRendererApi r9, int r10) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.UV.initialize(android.content.Context, com.facebook.ads.MediaViewVideoRenderer, com.facebook.ads.internal.api.MediaViewVideoRendererApi, int):void");
    }

    @Override // com.facebook.ads.redexgen.X.C5O, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A09 = true;
        A0C();
    }

    @Override // com.facebook.ads.redexgen.X.C5O, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A09 = false;
        A0C();
    }

    @Override // com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
    public final void onPrepared() {
        this.A00.setOnTouchListener(new ViewOnTouchListenerC1102Iv(this));
        A0A();
    }

    @Override // com.facebook.ads.redexgen.X.C5O, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A0C();
    }

    @Override // com.facebook.ads.redexgen.X.C5O, com.facebook.ads.internal.api.AdComponentView
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A0C();
    }
}
