package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.NativeAd;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1497Yj implements OW {
    public final /* synthetic */ NativeAd A00;
    public final /* synthetic */ C1492Ye A01;
    public final /* synthetic */ UJ A02;

    public C1497Yj(C1492Ye c1492Ye, UJ uj, NativeAd nativeAd) {
        this.A01 = c1492Ye;
        this.A02 = uj;
        this.A00 = nativeAd;
    }

    @Override // com.facebook.ads.redexgen.X.OW
    public final void A97() {
    }

    @Override // com.facebook.ads.redexgen.X.OW
    public final void ABE(AnonymousClass95 anonymousClass95) {
        new Handler(Looper.getMainLooper()).postDelayed(new C1498Yk(this, anonymousClass95), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.OW
    public final void ABT() {
        if (this.A01.A0A != null) {
            this.A01.A0A.A08();
        }
    }

    @Override // com.facebook.ads.redexgen.X.OW
    public final void ADB(View view, MotionEvent motionEvent) throws Throwable {
        this.A02.A19().A06(this.A01.A07, motionEvent, view, view);
        if (motionEvent.getAction() != 1 || this.A01.A0J(this.A00) || this.A02.A12() == null) {
            return;
        }
        this.A02.A12().onClick(view);
    }
}
