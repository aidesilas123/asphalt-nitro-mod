package com.facebook.ads.redexgen.X;

import android.graphics.drawable.ColorDrawable;
import com.facebook.ads.internal.api.AdCompanionView;
import com.facebook.ads.internal.api.AdCompanionViewApi;
import com.facebook.ads.internal.api.AdComponentViewApi;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1509Yv extends C5O implements AdCompanionViewApi {
    public static byte[] A05;
    public AbstractC1566aS A00;
    public AdCompanionView A01;
    public YA A02;
    public InterfaceC1086If A03;
    public AnonymousClass95 A04;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 21);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{-120, -108, -110, 83, -117, -122, -120, -118, -121, -108, -108, -112, 83, -122, -119, -104, 83, -114, -109, -103, -118, -105, -104, -103, -114, -103, -114, -122, -111, 83, -120, -111, -114, -120, -112, -118, -119};
    }

    public final void A02() {
        this.A04 = null;
    }

    public final void A03(YA ya, AbstractC1566aS abstractC1566aS) {
        AdCompanionView adCompanionView = this.A01;
        if (adCompanionView == null) {
            return;
        }
        this.A02 = ya;
        this.A00 = abstractC1566aS;
        C3H.A0A(adCompanionView, new ColorDrawable(0));
        this.A03 = this.A02.A09();
        AnonymousClass95 anonymousClass95 = new AnonymousClass95(this.A02, this.A03, this.A00, A00(0, 37, 16), 3);
        this.A04 = anonymousClass95;
        this.A01.addView(anonymousClass95);
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewApiProvider
    public final AdComponentViewApi getAdComponentViewApi() {
        return this;
    }

    @Override // com.facebook.ads.internal.api.AdCompanionViewApi
    public final void initialize(AdCompanionView adCompanionView) {
        this.A01 = adCompanionView;
    }
}
